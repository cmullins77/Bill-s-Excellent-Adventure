#include <stdio.h>
#include <stdlib.h>
#include "myLib.h"
#include "main.h"
#include "virus.h"
#include "sprites.h"
#include "hubMusic.h"
#include "virusBG.h"
#include "virusInstructions.h"
#include "virusSprites.h"
#include "virus_lose.h"
#include "virus_win.h"
#include "pause.h"
#include "virusMusic.h"
#include "shot.h"
#include "train.h"

int vState;
CROSSHAIR crossHair;
int vTimer;
int maxVTime;
int randNum; 
extern int virusOpen;

BILL2 special;
extern int state;
//ShadowOAM
extern OBJ_ATTR shadowOAM[128];

ENEMY enemies[20];
int enemyCount;
int timeToNextEnemy;
int timeIncrease;
int randTime;
int paletteSwapped;

int health = 6;
void initVirus() {
    stopSound();
    randNum = 0;
    DMANow(3, virusSpritesPal, SPRITE_PALETTE, 16);
    DMANow(3, virusSpritesTiles, &CHARBLOCKBASE[4], virusSpritesTilesLen/2);
    goToVirusInstructions();
}

void vUpdate() {
     switch(vState) {
        case VInstructions:
            updateVInstructions();
            break;
        case VGame:
            updateVGame();
            break;
        case VPause:
            updateVPause();
            break;
        case VWin:
            updateVWin();
            break;
        case VLose:
            updateVLose();
            break;
    }
}

void goToVirusInstructions() {
    initVirusGame();
    vState = VInstructions;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(28);
    loadPalette(virusInstructionsPal);
    DMANow(3, virusInstructionsMap, &SCREENBLOCKBASE[28],virusInstructionsMapLen/2);
    DMANow(3, virusInstructionsTiles, &CHARBLOCKBASE[0], virusInstructionsTilesLen/2);
}
void updateVInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToVGame();
        playSoundB(virusMusic, VIRUSMUSICLEN, VIRUSMUSICFREQ, 1);
    }
    randNum++;
}
void goToVGame() {
    vState = VGame;
    srand(randNum);
    randNum = 0;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(31);
    loadPalette(virusBGPal);
    DMANow(3, virusBGMap, &SCREENBLOCKBASE[31],virusBGMapLen/2);
    DMANow(3, virusBGTiles, &CHARBLOCKBASE[0], virusBGTilesLen/2);
    drawHealth();
}
void updateVGame() {
    if (!special.active && BUTTON_PRESSED(BUTTON_B)) {
        special.y = 40;
        special.dX = -2;
        special.x = 240;
        special.active = 1;
        playSoundA(train, TRAINLEN, TRAINFREQ, 0);
    }
    if (paletteSwapped == 1) {
        paletteSwapped = 0;
        loadPalette(virusBGPal);
    }
    if (paletteSwapped != 0) {
        paletteSwapped--;
    }
    if (vTimer == timeToNextEnemy) {
        for(int i = 0; i < enemyCount; i++) {
            ENEMY * e = &enemies[i];
            if (!e->active) {
                int num = rand()%10;
                if (num < 5) {
                    e->x = rand()%2 * 240;
                    if (e->x == 0) {
                        e->dX = rand()%2 + 1;
                        e->y = 56;
                    } else {
                        e->dX = -(rand()%2);
                        e->y = 136;
                    }
                    e->sprite = 8;
                    e->size = 16;
                    e->currFrame = 0;
                } else if (num > 8) {
                    e->x = rand()%2 * 240;
                    if (e->x == 0) {
                        e->dX = rand()%2 + 1;
                        e->y = 20;
                    } else {
                        e->dX = -(rand()%2 + 1);
                        e->y = 95;
                    }
                    e->sprite = 10;
                    e->size = 32;
                    e->currFrame = 0;
                } else {
                    e->x = rand()%2 * 240;
                    if (e->x == 0) {
                        e->dX = rand()%2 + 1;
                        e->y = 8;
                    } else {
                        e->dX = -(rand()%2 + 1);
                        e->y = 88;
                    }
                    e->sprite = 0;
                    e->size = 64;
                    e->currFrame = 0;
                }
                e->active = 1;
                timeToNextEnemy = rand() % randTime + vTimer + timeIncrease;
                timeIncrease-= 10;
                randTime-= 8;
                break;
            }
        }
    }
    if(vTimer % 25 == 0) {
        updateCrossHair(&crossHair);
        drawCrossHair(&crossHair);
        updateSpecial();
        drawSpecial();
        if (vTimer % 100 == 0) {
            updateEnemies();
            drawEnemies();
        }
    }
    for (int i = 0; i < enemyCount; i++) {
        ENEMY * e = &enemies[i];
        if (e->active) {
            checkCollisionEnemy(e, i);
        }
    }
    if (vTimer % 1000 == 0) {
        setVTimer();
    }
    vTimer++;
    DMANow(3, shadowOAM, OAM, 512);
    if (health == 0) {
        goToVLose();
    } else if (vTimer == maxVTime) {
        goToVWin();
    } else if (BUTTON_PRESSED(BUTTON_START)) {
        goToVPause();
    }
}
void goToVPause() {
    vState = VPause;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(31);
    loadPalette(pausePal);
    DMANow(3, pauseMap, &SCREENBLOCKBASE[31],pauseMapLen/2);
    DMANow(3, pauseTiles, &CHARBLOCKBASE[0], pauseTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
}
void updateVPause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToVGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        stopSound();
        playSoundB(hubMusic, HUBMUSICLEN, HUBMUSICFREQ, 1);
        goToGame();
    }
}
void goToVLose() {
    vState = VLose;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(27);
    loadPalette(virus_losePal);
    DMANow(3, virus_loseMap, &SCREENBLOCKBASE[27],virus_loseMapLen/2);
    DMANow(3, virus_loseTiles, &CHARBLOCKBASE[0], virus_loseTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
}
void updateVLose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundB(hubMusic, HUBMUSICLEN, HUBMUSICFREQ, 1);
        goToGame();
    }
}
void goToVWin() {
    vState = VWin;
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
    loadPalette(virus_winPal);
    DMANow(3, virus_winMap, &SCREENBLOCKBASE[26],virus_winMapLen/2);
    DMANow(3, virus_winTiles, &CHARBLOCKBASE[0], virus_winTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    virusOpen = 1;
}
void updateVWin() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundB(hubMusic, HUBMUSICLEN, HUBMUSICFREQ, 1);
        goToGame();
    }
}

void initVirusGame() {\
    health = 6;
    maxVTime = 200000;
    timeToNextEnemy = 0;
    timeIncrease = 5000;
    randTime = 5000;

    crossHair.x = 50;
    crossHair.y = 50;
    crossHair.xD = 0;
    crossHair.yD = 0;

    vTimer = 0;

    enemyCount = 20;
    ENEMY e;
    e.x = 0;
    e.y = 0;
    e.dX = 0;
    e.active = 0;
    for (int i = 0; i < enemyCount; i++) {
        enemies[i] = e;
    }
    enemies[0].x = 0;
    enemies[0].y = 8;
    enemies[0].dX = 1;
    enemies[0].active = 1;
    enemies[0].sprite = 0;
    enemies[0].size = 64;

    special.x = 0;
    special.y = 0;
    special.active = 0;
    special.train = 1;

}

void updateCrossHair(CROSSHAIR * c) {
    c->xD = 0;
    c->yD = 0;
    if (BUTTON_HELD(BUTTON_LEFT)) {
        c->xD = -1;
    } else if (BUTTON_HELD(BUTTON_RIGHT)) {
        c->xD = 1;
    }
    if (BUTTON_HELD(BUTTON_UP)) {
        c->yD = -1;
    } else if (BUTTON_HELD(BUTTON_DOWN)) {
        c->yD = 1;
    }
    if (c->x + c->xD < 0) {
        c->x = 0;
        c->xD = 0;
    } else if (c->x + c->xD > 240 - 32) {
        c->x = 240 - 32;
        c->xD = 0;
    }
    if (c->y + c->yD < 0) {
        c->y = 0;
        c->yD = 0;
    } else if (c->y + c->yD > 160 - 32) {
        c->y = 160 - 32;
        c->yD = 0;
    }
    c->x += c->xD;
    c->y += c->yD;
}

void drawCrossHair(CROSSHAIR * c) {
    shadowOAM[Cross_Hair].attr0 = c->y;
    shadowOAM[Cross_Hair].attr1 = c->x | ATTR1_SIZE32;
    shadowOAM[Cross_Hair].attr2 = SPRITEOFFSET16(0, 26);
}

void updateEnemies() {
    for (int i = 0; i < enemyCount; i++) {
        ENEMY * e = &enemies[i];
        if (e->active) {
            e->x += e->dX;
            if (vTimer % 200 == 0) {
                if (e->currFrame) {
                    e->currFrame = 0;
                } else {
                    e->currFrame = 1;
                }
            }
            if (special.active) {
                checkCollisionEnemySpecial(e, i);
            }
        }
    }
}

void drawEnemies() {
     for (int i = 0; i < enemyCount; i++) {
        ENEMY * e = &enemies[i];
        if (e->active) {
            shadowOAM[Enemy + i].attr0 = e->y;
            if (e->size == 16) {
                shadowOAM[Enemy + i].attr1 = e->x | ATTR1_SIZE16;
                if (e->dX >= 1) {
                    shadowOAM[Enemy + i].attr2 = SPRITEOFFSET16(e->currFrame * (e->size/8) + 4, e->sprite);
                } else {
                    shadowOAM[Enemy + i].attr2 = SPRITEOFFSET16(e->currFrame * (e->size/8), e->sprite);
                }
            } else if (e->size == 32) {
                shadowOAM[Enemy + i].attr1 = e->x | ATTR1_SIZE32;
                if (e->dX >= 1) {
                    shadowOAM[Enemy + i].attr2 = SPRITEOFFSET16(e->currFrame * (e->size/8) + 8, e->sprite);
                } else {
                    shadowOAM[Enemy + i].attr2 = SPRITEOFFSET16(e->currFrame * (e->size/8), e->sprite);
                }
            } else {
                shadowOAM[Enemy + i].attr1 = e->x | ATTR1_SIZE64;
                shadowOAM[Enemy + i].attr2 = SPRITEOFFSET16(e->currFrame * (e->size/8), e->sprite);
            }
        }
    }
}

void checkCollisionEnemy(ENEMY * e, int i) {
    if (e->x < 0 || e->x > 240) {
        shadowOAM[Enemy + i].attr0 = ATTR0_HIDE;
        e->active = 0;
        health--;
        PALETTE[0] = COLOR(16,0,0);
        PALETTE[1] = COLOR(22,8,6);
        PALETTE[2] = COLOR(0,0,0);
        PALETTE[3] = COLOR(22,12,10);
        PALETTE[4] = COLOR(24,0,0);
        paletteSwapped = 1000;
        drawHealth();
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        playSoundA(shot, SHOTLEN, SHOTFREQ, 0);
        if (e->x < crossHair.x + 18 && e->x + e->size > crossHair.x + 12 && e->y < crossHair.y + 18 && e->y + e->size > crossHair.y + 12) {
            shadowOAM[Enemy + i].attr0 = ATTR0_HIDE;
            e->active = 0;
        }
    }

}

void drawHealth() {
    for (int i = 0; i < 6; i++) {
        if (health > i) {
            shadowOAM[Health + i].attr0 = 2;
            shadowOAM[Health + i].attr1 = 48 + (i*8);
            shadowOAM[Health + i].attr2 = SPRITEOFFSET16(0, 14);
        } else {
            shadowOAM[Health + i].attr0 = ATTR0_HIDE;
        }
    } 
}
void setVTimer() {
    int num;
    int time = maxVTime - vTimer;
    time /= 1000;
    for (int i = 0; i < 3; i++) {
        num = time % 10;
        time /= 10;
        shadowOAM[TIME + i].attr0 = 2;
        shadowOAM[TIME + i].attr1 = 12 - (i * 6) + 15;
        shadowOAM[TIME + i].attr2 = SPRITEOFFSET16(num, 15);
    }
}

void updateSpecial() {
    if (special.active) {
        special.x += special.dX;
        if (special.x < 0) {
            special.x = 0;
            special.dX = 2;
            special.y = 120;
        }
        if (special.x > (240 + (64))) {
            special.active = 0;
            shadowOAM[SPECIAL].attr0 = ATTR0_HIDE;
            shadowOAM[SPECIAL + 1].attr0 = ATTR0_HIDE;
            shadowOAM[SPECIAL + 2].attr0 = ATTR0_HIDE;
        }
    }
}
void drawSpecial() {
    if (special.active) {
        if (special.dX > 0) {
            shadowOAM[SPECIAL].attr0 = special.y | ATTR0_WIDE;
            shadowOAM[SPECIAL].attr1 = special.x | ATTR1_SIZE64;
            shadowOAM[SPECIAL].attr2 = SPRITEOFFSET16(16, 0);
        } else {
            shadowOAM[SPECIAL].attr0 = special.y | ATTR0_WIDE;
            shadowOAM[SPECIAL].attr1 = special.x | ATTR1_SIZE64;
            shadowOAM[SPECIAL].attr2 = SPRITEOFFSET16(20, 0);
        }
    }
}

void checkCollisionEnemySpecial(ENEMY * e, int i) {
    if (e->x < special.x + 64 && e->x + e->size > special.x && e->y < special.y + 32 && e->y + e->size > special.y) {
            shadowOAM[Enemy + i].attr0 = ATTR0_HIDE;
            e->active = 0;
    }
}