#include "myLib.h"
#include "main.h"
#include "palette_tv.h"
#include "sprites.h"
#include "background.h"
#include "tvInstructions.h"
#include "pause.h"
#include "palette_win.h"
#include "palette_lose.h"
#include "Bill_Jump_Sound.h"
#include "tvMusic.h"
#include "Jump.h"
#include "hubMusic.h"

extern int state;
//ShadowOAM
extern OBJ_ATTR shadowOAM[128];

extern int tvOpen;

int pTVState;
int totalYOff;

int dead;

//Time
int timer = 0;
int maxTime;

int bg0;
int bg1;
int bg2;
int bg3;

int platformMove;

BILL bill;
PLATFORM platforms[22];
int platformCount = 22;
int platformX[22] = {64,64,64,120,208,208,136,64,0,64, 120, 200, 144, 144 ,72, 0, 0, 0, 80, 144, 144, 144};
int platformY[22] = {136, 112, 88, 72, 48, 24, 24, 8, -16, -40, -40, -64, -88, -112, -120, -128, -152, -176, -184, -208, -232, -256};
int platformCol[22] = {1, 0, 1, 0, 2, 0, 2, 3, 3, 1, 0, 3, 3, 2, 3, 0, 0, 2, 0, 2, 1, 0};
DEATHZONE dZ;

void initTV() {
    stopSound();
    DMANow(3, spritesPal, SPRITE_PALETTE, 16);
    DMANow(3, spritesTiles, &CHARBLOCKBASE[4], spritesTilesLen/2);
    goToTVInstructions();
}

void pTUpdate() {
    switch(pTVState) {
        case TVInstructions:
            updateTVInstructions();
            break;
        case TVGame:
            updateTVGame();
            break;
        case TVPause:
            updateTVPause();
            break;
        case TVWin:
            updateTVWin();
            break;
        case TVLose:
            updateTVLose();
            break;
    }
}

void goToTVInstructions() {
    initPaletteTV();
    pTVState = TVInstructions;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(31);
    loadPalette(tvInstructionsPal);
    DMANow(3, tvInstructionsMap, &SCREENBLOCKBASE[31],tvInstructionsMapLen/2);
    DMANow(3, tvInstructionsTiles, &CHARBLOCKBASE[0], tvInstructionsTilesLen/2);
}
void updateTVInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToTVGame();
        playSoundB(tvMusic_c1, TVMUSICLEN, TVMUSICFREQ, 1);
    }
}
void goToTVGame() {
    pTVState = TVGame;

    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(31);
    loadPalette(backgroundPal);
    if (bg0 == 1) {
        u16 temp = PALETTE[0];
        PALETTE[0] = PALETTE[1];
        PALETTE[1]= PALETTE[2];
        PALETTE[2] = PALETTE[3];
        PALETTE[3] = temp;
    } else if (bg0 == 2) {
        u16 temp = PALETTE[0];
        u16 temp2 = PALETTE[1];
        PALETTE[0] = PALETTE[2];
        PALETTE[1]= PALETTE[3];
        PALETTE[2] = temp;
        PALETTE[3] = temp2;
    } else if (bg0 == 3) {
         u16 temp = PALETTE[3];
        PALETTE[3] = PALETTE[2];
        PALETTE[2] = PALETTE[1];
        PALETTE[1] = PALETTE[0];
        PALETTE[0] = temp;
    }
    DMANow(3, backgroundMap, &SCREENBLOCKBASE[31],backgroundMapLen/2);
    DMANow(3, backgroundTiles, &CHARBLOCKBASE[0], backgroundTilesLen/2);
    drawPlatforms();
}
void updateTVGame() {
    updateBill(&bill);
    drawBill(&bill);
    if (timer % 1000 == 0) {
        setTimer();
    }
    DMANow(3, shadowOAM, OAM, 512);
    timer++;
    if (BUTTON_PRESSED(BUTTON_A)) {
        /*u16 temp = PALETTE[0];
        PALETTE[0] = PALETTE[1];
        PALETTE[1]= PALETTE[2];
        PALETTE[2] = PALETTE[3];
        PALETTE[3] = temp;
        bg3 = bg0;
        bg0++;
        if (bg0 == 4) {
            bg0 = 0;
        }
        bg1++;
        if (bg1 == 4) {
            bg1 = 0;
        }
        bg2++;
        if (bg2 == 4) {
            bg2 = 0;
        }*/
        u16 temp = PALETTE[3];
        PALETTE[3] = PALETTE[2];
        PALETTE[2] = PALETTE[1];
        PALETTE[1] = PALETTE[0];
        PALETTE[0] = temp;
        bg0 = bg3;
        bg1--;
        if (bg1 == -1) {
            bg1 = 3;
        }
        bg2--;
        if (bg2 == -1) {
            bg2 = 3;
        }
        bg3--; 
        if (bg3 == -1) {
            bg3 = 3;
        }
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        pauseSound();
        goToTVPause();
    }
    if (maxTime - timer == 0) {
        stopSound();
        goToTVLose();
    }
    if (bill.y - totalYOff < -270) {
        stopSound();
        goToTVWin();
    }
}
void goToTVPause() {
    pTVState = TVPause;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(31);
    loadPalette(pausePal);
    DMANow(3, pauseMap, &SCREENBLOCKBASE[31],pauseMapLen/2);
    DMANow(3, pauseTiles, &CHARBLOCKBASE[0], pauseTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
}
void updateTVPause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToTVGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        pTVState = TVInstructions;
        stopSound();
        playSoundB(hubMusic, HUBMUSICLEN, HUBMUSICFREQ, 1);
        goToGame();
    }
}
void goToTVWin() {
    pTVState = TVWin;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(31);
    loadPalette(palette_winPal);
    DMANow(3, palette_winMap, &SCREENBLOCKBASE[31],palette_winMapLen/2);
    DMANow(3, palette_winTiles, &CHARBLOCKBASE[0], palette_winTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    tvOpen = 1;
}
void updateTVWin() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundB(hubMusic, HUBMUSICLEN, HUBMUSICFREQ, 1);
        goToGame();
    }
}
void goToTVLose() {
    pTVState = TVLose;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(31);
    loadPalette(palette_losePal);
    DMANow(3, palette_loseMap, &SCREENBLOCKBASE[31],palette_loseMapLen/2);
    DMANow(3, palette_loseTiles, &CHARBLOCKBASE[0], palette_loseTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
}
void updateTVLose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundB(hubMusic, HUBMUSICLEN, HUBMUSICFREQ, 1);
        goToGame();
    }
}

void updateBill(BILL * b) {
    b->prevDY = b->dY;

    //input
    volatile int key_right = 0;
    volatile int key_left = 0;
    volatile int key_jump = 0;

    if(BUTTON_HELD(BUTTON_RIGHT)) {
        key_right = 1;
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        key_left = -1;
    }
    if (BUTTON_PRESSED(BUTTON_UP)) {
        key_jump = 1;
    }

    //react to input
    int move = key_left + key_right;
    b->dX = move * b->moveSpeed;
    if(b->dY < 10 && timer % 120 == 0) {
        b->dY += b->grav;
    }


    if (b->x + b->dX <= 0) {
        b->dX = 0;
        b->x = 0;
    } else if (b->x + b->dX > 239 - 16) {
        b->dX = 0;
        b->x = 239 - 16;
    }
    if (b->y + b->dY < 0) {
        if (totalYOff -b->dY < 500) {
            changeCamera(-b->dY);
            totalYOff -= b->dY;
        } else {
            b->dY = 0;
            b->y = 0;
        }
    } else if (b->y + b->dY > 159 - 24) {
        if (totalYOff -b->dY > 0) {
            changeCamera(-b->dY);
            totalYOff -= b->dY;
        }
    }
    if (b->dY + b->y >= dZ.y - 23) {
        //dead = 1;
        b->jumping = 0;
        b->dY = 0;
        b->y = dZ.y - 23;
        DMA[1].cnt = 0;
        REG_TM0CNT = 0;
    }

    //Check Platform Collisions
    for (int i = 0; i < platformCount; i++) {
        PLATFORM * pl = &platforms[i];
        if (pl->active) {
            checkCollisionBillPlatform(b, pl);
        }
    }

    //Jumps
    if (!b->jumping && key_jump) {
        b->dY = -b->jumpSpeed;
        b->y += b->dY;
        b->jumping = 1;
        playSoundA(Jump,JUMPLEN,JUMPFREQ, 0);
    }

    if (b->aniState != BILL_IDLE) {
        b->prevAniState = b->aniState;
    }
    b->aniState = BILL_IDLE;
    if (b->dY == 0) {
        if (b->dX > 0) {
            b->aniState = BILL_RIGHT;
            b->aState = BILL_RIGHT;
        } else if (b->dX < 0) {
            b->aniState = BILL_LEFT;
            b->aState = BILL_LEFT;
        }
    } else {
        if (b->dX > 0) {
            b->aniState = BILL_JUMP_RIGHT;
            b->aState = BILL_IDLE_RIGHT;
            b->currFrame = 1;
        } else if (b->dX < 0) {
            b->aniState = BILL_JUMP_LEFT;
            b->aState = BILL_IDLE_LEFT;
            b->currFrame = 1;
        }
        b->collided = 0;
    }
    if (b->aniState == BILL_IDLE) {
        b->currFrame = 0;
        if ((b->prevAniState == BILL_LEFT) || (b->prevAniState == BILL_JUMP_LEFT)) {
            b->aState = BILL_IDLE_LEFT;
        } else if ((b->prevAniState == BILL_RIGHT) || (b->prevAniState == BILL_JUMP_RIGHT)) {
            b->aState = BILL_IDLE_RIGHT;
        }
    }
    if (timer % 200 == 0 && (b->aniState == BILL_RIGHT || b->aniState == BILL_LEFT) && !b->jumping) {
        b->currFrame++;
        if (b->currFrame == 8) {
            b->currFrame = 0;
        }
    }
    if (timer % 50 == 0) {
        b->x = b->x + b->dX;
    }
    if (timer % 95 == 0) {
            b->y = b->y + b->dY;
    }
}

void drawBill(BILL * b) {
        shadowOAM[PLAYER].attr0 = b->y | ATTR0_TALL;
        shadowOAM[PLAYER].attr1 = b->x | ATTR1_SIZE32;
        shadowOAM[PLAYER].attr2 = SPRITEOFFSET16(b->currFrame * 4, b->aState * 2);
}

void checkCollisionBillPlatform(BILL * b, PLATFORM * p) {
    if (!(((p->x >= 0 && p->x < 60) && (bg0 == p->col)) || ((p->x >= 60 && p->x < 120) && (bg1 == p->col)) || ((p->x >= 120 && p->x < 180) && (bg2 == p->col)) || ((p->x >= 180) && (bg3 == p->col)))) {
        if(b->y + b->dY + 24 >= p->y && b->y + 24 <= p->y && b->x < p->x + 32 && b->x + 16 > p->x && b->dY > 0) {
        b->dY = 0;
        b->y = p->y - 24;
        b->jumping = 0;
        b->collided = 1;
        //REG_TM0CNT = 0;
    }
    }
}
void drawPlatforms() {
    for (int i = 0; i < platformCount; i++) {
        PLATFORM * p = &platforms[i];
        if (p->y < 0 || p->y > 159) {
            shadowOAM[STRUCTURE + i].attr0 = ATTR0_HIDE;
            p->active = 0;
        } else {
            shadowOAM[STRUCTURE + i].attr0 = p->y | ATTR0_WIDE;
            shadowOAM[STRUCTURE + i].attr1 = p->x | ATTR1_SIZE16;
            shadowOAM[STRUCTURE + i].attr2 = SPRITEOFFSET16(p->col, 8);
            p->active = 1;
        }
    }

}

void initPaletteTV() {
    bg0 = 0;
    bg1 = 1;
    bg2 = 2;
    bg3 = 3;

    maxTime = 300000;
    dead = 0;
    totalYOff = 0;
    dZ.y = 159;
    timer = 0;

    bill.x = 0;
    bill.y = 159 - 32;
    bill.dX = 0;
    bill.dY = 0;
    bill.grav = 1;
    bill.jumpSpeed = 6;
    bill.moveSpeed = 2;
    bill.jumping = 0;
    bill.collided = 1;

    for (int i = 0; i < platformCount; i++) {
        PLATFORM p;
        p.x = platformX[i];
        p.y = platformY[i];
        p.col = platformCol[i];
        p.active = 1;
        platforms[i] = p;
    }
}
void changeCamera(int yOff) {
    bill.y += yOff;
    dZ.y += yOff;
    for (int i = 0; i < platformCount; i++) {
        platforms[i].y += yOff;
    }
    drawPlatforms();
}

void setTimer() {
    int num;
    int time = maxTime - timer;
    time /= 1000;
    for (int i = 0; i < 3; i++) {
        num = time % 10;
        time /= 10;
        shadowOAM[TIME + i].attr0 = 2;
        shadowOAM[TIME + i].attr1 = 12 - (i * 6);
        shadowOAM[TIME + i].attr2 = SPRITEOFFSET16(num, 12);
    }
}