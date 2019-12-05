/**
    The Game takes place in Bill's dreams/nightmares at the end of the school year. He finds himself in a dream version of the 2261 classroom
    with technology falling apart around him. There are two mini games that must be completed to finish the game. The first is an old TV in which
    Bill must get to the top by swapping palettes to reveal platforms. The second takes place inside his laptop where he must shoot virus's that
    threaten to take it over.

    Some of the start animation sometimes has some issues loading, as in sometimes wrong pixels apear in the middle of the images while loading.

    All of the art is original. I used palette swapping as a core gameplay element. I mainly focused on making the game fun and a bit ridiculous
    so it really lives up to it's name and is enjoyable to play, especially for those in 2261 or Bill's other classes. I spent alot of time making
    the Bill sprite's animation to make moving around and jumping fun.
*/


#include <stdio.h>
#include <stdlib.h>
#include "myLib.h"
#include "palette_tv.h"
#include "main.h"
#include "title.h"
#include "hub.h"
#include "instructions.h"
#include "hubSprites.h"
#include "theme.h"
#include "Bill_Jump_Sound.h"
#include "splashMusic.h"
#include "hubMusic.h"
#include "virusMusic.h"
#include "tvMusic.h"
#include "GameWin.h"
#include "bg1.h"
#include "bg2.h"
#include "pause.h"
#include "animation.h"

//Buttons
unsigned int buttons; 
unsigned int oldButtons;

//ShadowOAM
OBJ_ATTR shadowOAM[128];

HUBBILL hubBill;
int hubTimer;

//Background
int hOff = 0;
int vOff = 0;


#define ROWMASK 0xFF
#define COLMASK 0x1FF


int state;
int game;

int virusOpen;
int tvOpen;

//Sounds:
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vbCount;
}SOUND;
SOUND soundA;
SOUND soundB;

int main() {
    init();
    while(1) {

        //Gets input
        oldButtons = buttons;
        buttons = BUTTONS;

        //State Machine
        switch(state) {
            case SPLASH:
                updateSplash();
                break;
            case GAME:
                updateGame();
                break;
            case INSTRUCTIONS:
                updateInstructions();
                break;
            case PAUSE:
                updatePause();
                break;
            case WIN:
                updateWin();
                break;
            case LOSE:
                updateLose();
                break;
            case TV:
                updateTV();
                break;
            case VIRUS:
                updateVirus();
                break;
            case ANIMATION:
                updateAnimation();
                break;
        }
    }
}


//Initialize values at very beginning
void init() {

    //Enable mode 0, background, and sprites
    REG_DISPCTL = MODE0| BG0_ENABLE | SPRITE_ENABLE;
    hideSprites();

    //Set timer to 0
    hubTimer = 0;

    DMANow(3, shadowOAM, OAM, 512);

    //Sound stuff
    setupSounds();
    setupInterrupts();


    goToSplash(); 
    //Play Splash music
    playSoundB(splashMusic, SPLASHMUSICLEN,SPLASHMUSICFREQ, 1);
}


//Hides all sprites
void hideSprites() {
    for (int i = 0; i < 128; i++) {
        shadowOAM[i].attr0 = ATTR0_HIDE;
    }
}

//State Machine Stuff

void goToSplash() {

    //Setup backround and palette
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(28);
    loadPalette(titlePal);
    hOff = 0;
    vOff = 0;
    DMANow(3, titleMap, &SCREENBLOCKBASE[28],titleMapLen/2);
    DMANow(3, titleTiles, &CHARBLOCKBASE[0], titleTilesLen/2);

    //Reset Hub Bill's values
    hubBill.x = 100;
    hubBill.y = 65;
    hubBill.worldX = 100;
    hubBill.moveSpeed = 1;
    virusOpen = 0;
    tvOpen = 0;



    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;

    hideSprites();
    state = SPLASH;
    DMANow(3, shadowOAM, OAM, 512);
}

void updateSplash() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToAnimation();
    }
}

void goToAnimation() {
    state = ANIMATION;
    startAnimation();
}
void updateAnimation() {
    titleAnimation();
}
void goToInstructions() {
    state = INSTRUCTIONS;

    //Setup background and palette
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(24);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    loadPalette(instructionsPal);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    DMANow(3, instructionsMap, &SCREENBLOCKBASE[24],instructionsMapLen/2);
    DMANow(3, instructionsTiles, &CHARBLOCKBASE[0], instructionsTilesLen/2);

}

void updateInstructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
        stopSound();
        playSoundB(hubMusic, HUBMUSICLEN, HUBMUSICFREQ, 1);
    }
}

void goToGame() {
    REG_DISPCTL = MODE0| BG0_ENABLE | SPRITE_ENABLE | BG1_ENABLE;
    //Setup Background and Palette
    REG_BG1CNT = BG_SIZE1 | CBB(0) | SBB(27);
    REG_BG0CNT = BG_SIZE1 | CBB(2) | SBB(22);
    loadPalette(bg1Pal);
    DMANow(3, bg1Map, &SCREENBLOCKBASE[27],bg1MapLen/2);
    DMANow(3, bg1Tiles, &CHARBLOCKBASE[0], bg1TilesLen/2);
    DMANow(3, bg2Map, &SCREENBLOCKBASE[22],bg2MapLen/2);
    DMANow(3, bg2Tiles, &CHARBLOCKBASE[2], bg2TilesLen/2);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;

    DMANow(3, hubSpritesPal, SPRITE_PALETTE, 16);
    DMANow(3, hubSpritesTiles, &CHARBLOCKBASE[4], hubSpritesTilesLen/2);

    //Clear Sprites
    hideSprites();
    state = GAME;

    if(virusOpen && tvOpen) {
        REG_DISPCTL = MODE0| BG0_ENABLE | SPRITE_ENABLE;
        stopSound();
        playSoundB(Bill_Jump_Sound, BILL_JUMP_SOUNDLEN, BILL_JUMP_SOUNDFREQ, 1);
        goToWin();
    }
 
}

void updateGame() {

    if(BUTTON_HELD(BUTTON_LEFT) && hubTimer % 200 == 0 && hOff > -70)
        {
            hOff--;
            hubBill.worldX--;
            if (hubBill.worldX < 0) {
                hubBill.worldX = 0;
            }
        }
    if(BUTTON_HELD(BUTTON_RIGHT) && hubTimer % 200 == 0 && hOff < 50)
        {
            hOff++;
            hubBill.worldX++;
            if(hubBill.worldX > 255) {
                hubBill.worldX = 255;
            }
        }

    //Update and Draw Bill
    updateHubBill(&hubBill);
    drawHubBill(&hubBill);
    DMANow(3, shadowOAM, OAM, 512);

    REG_BG0HOFS = hOff * 2;
    REG_BG1HOFS = hOff;
    //REG_BG0VOFS = vOff;

    //Goes to Levels:
    if (hubBill.worldX >= 45 && hubBill.worldX <= 70) {
        shadowOAM[A_BUTTON].attr0 = 45;
        shadowOAM[A_BUTTON].attr1 = (hubBill.x + 8) | ATTR1_SIZE16;
        shadowOAM[A_BUTTON].attr2 = SPRITEOFFSET16(0, 4);
    } else if (hubBill.worldX >= 115 && hubBill.worldX <= 140) {
        shadowOAM[A_BUTTON].attr0 = 45;
        shadowOAM[A_BUTTON].attr1 = (hubBill.x + 8) | ATTR1_SIZE16;
        shadowOAM[A_BUTTON].attr2 = SPRITEOFFSET16(0, 4);
    } else {
        shadowOAM[A_BUTTON].attr0 = ATTR0_HIDE;
    }
    if (BUTTON_PRESSED(BUTTON_A)) {
        if (hubBill.worldX >= 45 && hubBill.worldX <= 70) {
            REG_DISPCTL = MODE0| BG0_ENABLE | SPRITE_ENABLE;
            goToTV();
        } else if (hubBill.worldX >= 115 && hubBill.worldX <= 140) {
            REG_DISPCTL = MODE0| BG0_ENABLE | SPRITE_ENABLE;
            goToVirus();
        }
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        REG_DISPCTL = MODE0| BG0_ENABLE | SPRITE_ENABLE;
        goToPause();
    }
    hubTimer++;
}

void goToTV() {

    //Go to TV minigame:
    state = TV;
    initTV();
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
}

void updateTV() {
    pTUpdate();
}
void goToVirus() {

    //Go to virus Mini-game
    state = VIRUS;
    initVirus();
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
}

void updateVirus() {
    vUpdate();
}
void goToPause() {
    //Background Stuff
    REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(27);
    loadPalette(pausePal);
    DMANow(3, pauseMap, &SCREENBLOCKBASE[27],pauseMapLen/2);
    DMANow(3, pauseTiles, &CHARBLOCKBASE[0], pauseTilesLen/2);
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    state = PAUSE;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
    pauseSound();
}

void updatePause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        unpauseSound();
        goToGame();
    } else if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToSplash();
        //Play Splash music
        stopSound();
        playSoundB(splashMusic, SPLASHMUSICLEN, SPLASHMUSICFREQ, 1);
    }
}
void goToWin() {
    state = WIN;
    startAnimation();

}

void updateWin() {
    endAnimation();
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundB(splashMusic, SPLASHMUSICLEN, SPLASHMUSICFREQ, 1);
        goToSplash();
    }
}

void goToLose() {
    //clear sprites
    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    state = LOSE;
    REG_BG0HOFS = 0;
    REG_BG0VOFS = 0;
}

void updateLose() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToSplash();
    }
}

void updateHubBill(HUBBILL * b) {

    //input
    volatile int key_right = 0;
    volatile int key_left = 0;

    if(BUTTON_HELD(BUTTON_RIGHT) && hOff<50) {
        key_right = 1;
    }
    if (BUTTON_HELD(BUTTON_LEFT) && hOff>-70) {
        key_left = -1;
    }

    //react to input
    int move = key_left + key_right;
    b->dX = move * b->moveSpeed;


    if (b->x + b->dX < 8) {
        if (b->y == 24) {
            b->y = 104;
            b->x = 239 - 40;
        } else {
            b->dX = 0;
            b->x = 8;
        }
    } else if (b->x + b->dX > 239 - 40) {
        if (b->y == 104) {
            b->y = 24;
            b->x = 8;
        } else {
            b->dX = 0;
            b->x = 239 - 40;
        }
    }

    if (b->aniState != BILL_IDLE) {
        b->prevAniState = b->aniState;
    }
    b->aniState = BILL_IDLE;
    if (b->dX > 0) {
        b->aniState = BILL_RIGHT;
        b->aState = BILL_RIGHT;
    } else if (b->dX < 0) {
        b->aniState = BILL_LEFT;
        b->aState = BILL_LEFT;
    }
    if (b->aniState == BILL_IDLE) {
        DMA[1].cnt = 0;
        b->currFrame = 0;
        if ((b->prevAniState == BILL_LEFT)) {
            b->aState = BILL_IDLE_LEFT;
        } else if ((b->prevAniState == BILL_RIGHT)) {
            b->aState = BILL_IDLE_RIGHT;
        }
    } else {

    }
    if (hubTimer % 500 == 0 && (b->aniState == BILL_RIGHT || b->aniState == BILL_LEFT)) {
        b->currFrame++;
        if (b->currFrame == 8) {
            b->currFrame = 0;
        }
    }
    if (hubTimer % 100 == 0) {
        //b->x = b->x + b->dX;
        //hOff += b->dX;
    }
}

void drawHubBill(HUBBILL * b) {
        shadowOAM[PLAYER].attr0 = b->y | ATTR0_TALL;
        shadowOAM[PLAYER].attr1 = b->x | ATTR1_SIZE64;
        shadowOAM[PLAYER].attr2 = SPRITEOFFSET16(b->aState * 8, b->currFrame * 4);
}

void setupSounds()
{
    REG_SOUNDCNT_X = SND_ENABLED;

    REG_SOUNDCNT_H = SND_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_RATIO_100 | 
                     DSA_OUTPUT_TO_BOTH | 
                     DSA_TIMER0 | 
                     DSA_FIFO_RESET |
                     DSB_OUTPUT_RATIO_100 | 
                     DSB_OUTPUT_TO_BOTH | 
                     DSB_TIMER1 | 
                     DSB_FIFO_RESET;

    REG_SOUNDCNT_L = 0;
}
void playSoundA( const unsigned char* sound, int length, int frequency, int loops) {
        DMA[1].cnt = 0;
    
        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;
    
        DMANow(1, sound, REG_FIFO_A, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);
    
        REG_TM0CNT = 0;
    
        REG_TM0D = -ticks;
        REG_TM0CNT = TIMER_ON;
    
        //TODO: FINISH THIS FUNCTION
        // Assign all the appropriate struct values (excluding priority)
        soundA.isPlaying = 1;
        soundA.length = length;
        soundA.frequency = frequency;
        soundA.loops = loops;
        soundA.data = sound;
        soundA.duration = ((VBLANK_FREQ*length)/frequency);
        soundA.vbCount = 0;
        
}


void playSoundB( const unsigned char* sound, int length, int frequency, int loops) {

        DMA[2].cnt = 0;

        int ticks = PROCESSOR_CYCLES_PER_SECOND/frequency;

        DMANow(2, sound, REG_FIFO_B, DMA_DESTINATION_FIXED | DMA_AT_REFRESH | DMA_REPEAT | DMA_32);

        REG_TM1CNT = 0;
    
        REG_TM1D = -ticks;
        REG_TM1CNT = TIMER_ON;
    
        // TODO: FINISH THIS FUNCTION
        // Assign all the appropriate struct values
        soundB.isPlaying = 1;
        soundB.length = length;
        soundB.frequency = frequency;
        soundB.loops = loops;
        soundB.data = sound;
        soundB.duration = ((VBLANK_FREQ*length)/frequency);
        soundB.vbCount = 0;
        
        
}

void pauseSound()
{
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
    
}

void unpauseSound()
{
    REG_TM0CNT = TIMER_ON;
    REG_TM1CNT = TIMER_ON;
}

void stopSound()
{
    DMA[1].cnt = 0;
    DMA[2].cnt = 0;
    REG_TM0CNT = 0;
    REG_TM1CNT = 0;
    
}

void setupInterrupts()
{
    REG_IME = 0;
    // TODO: SET UP THE INTERRUPT HANDLER HERE
    // HINT: THERE IS A REGISTER THAT NEEDS TO POINT TO A INTERRUPT FUNCTION
    // HINT: THAT INTERRUPT FUNCTION HAS TO BE CAST TO SOMETHING...
    REG_INTERRUPT = (unsigned int)interruptHandler;
    REG_IE |= INT_VBLANK;
    REG_DISPSTAT |= INT_VBLANK_ENABLE;
    REG_IME = 1;
}

void interruptHandler()
{
    REG_IME = 0;
    if(REG_IF & INT_VBLANK)
    {
        //TODO: FINISH THIS FUNCTION
        // This should be where you determine if a sound if finished or not
        if (soundA.isPlaying) {
            soundA.vbCount++;
            if (soundA.vbCount > soundA.duration) {
                if(soundA.loops) {
                    playSoundA(soundA.data, soundA.length, soundA.frequency, soundA.loops);
                } else {
                    DMA[1].cnt = 0;
                    soundA.isPlaying = 0;
                    REG_TM0CNT = 0;
                }
            }
        }
        if (soundB.isPlaying) {
            soundB.vbCount++;
            if (soundB.vbCount > soundB.duration) {
                if(soundB.loops) {
                    playSoundB(soundB.data, soundB.length, soundB.frequency, soundB.loops);
                } else {
                    DMA[2].cnt = 0;
                    soundB.isPlaying = 0;
                    REG_TM1CNT = 0;
                }
            }
        }
        REG_IF = INT_VBLANK; 
    }

    REG_IME = 1;
}
