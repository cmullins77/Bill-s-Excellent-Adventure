#include <stdio.h>
#include <stdlib.h>
#include "myLib.h"
#include "main.h"
#include "animation.h"
#include "ani1.h"
#include "ani2.h"
#include "ani3.h"
#include "ani4.h"
#include "ani5.h"
#include "ani6.h"
#include "ani7.h"
#include "ani8.h"
#include "ani9.h"
#include "ani10.h"
#include "ani11.h"
#include "ani12.h"
#include "ani13.h"
#include "ani14.h"
#include "ani15.h"
#include "ani16.h"
#include "ani17.h"
#include "ani18.h"
#include "ani19.h"
#include "ani20.h"
#include "ani21.h"
#include "ani22.h"
#include "ani23.h"
#include "ani24.h"
#include "ani25.h"
#include "ani26.h"
#include "ani27.h"
#include "ani28.h"
#include "ani29.h"

int aniTimer;
int aTimer2;
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];


void startAnimation() {
    aniTimer = 0;
    aTimer2 = 0;
}

void titleAnimation() {
    if (aniTimer == 0) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani1Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani1Map, &SCREENBLOCKBASE[26],ani1MapLen/2);
        DMANow(3, ani1Tiles, &CHARBLOCKBASE[0], ani1TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 4000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani2Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani2Map, &SCREENBLOCKBASE[26],ani2MapLen/2);
        DMANow(3, ani2Tiles, &CHARBLOCKBASE[0], ani2TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 4250) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani3Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani3Map, &SCREENBLOCKBASE[26],ani3MapLen/2);
        DMANow(3, ani3Tiles, &CHARBLOCKBASE[0], ani3TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 4500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani4Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani4Map, &SCREENBLOCKBASE[26],ani4MapLen/2);
        DMANow(3, ani4Tiles, &CHARBLOCKBASE[0], ani4TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 5000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani5Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani5Map, &SCREENBLOCKBASE[26],ani5MapLen/2);
        DMANow(3, ani5Tiles, &CHARBLOCKBASE[0], ani5TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 5500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani6Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani6Map, &SCREENBLOCKBASE[26],ani6MapLen/2);
        DMANow(3, ani6Tiles, &CHARBLOCKBASE[0], ani6TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 6000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani7Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani7Map, &SCREENBLOCKBASE[26],ani7MapLen/2);
        DMANow(3, ani7Tiles, &CHARBLOCKBASE[0], ani7TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 6500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani8Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani8Map, &SCREENBLOCKBASE[26],ani8MapLen/2);
        DMANow(3, ani8Tiles, &CHARBLOCKBASE[0], ani8TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 7000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani9Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani9Map, &SCREENBLOCKBASE[26],ani9MapLen/2);
        DMANow(3, ani9Tiles, &CHARBLOCKBASE[0], ani9TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 8500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani10Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani10Map, &SCREENBLOCKBASE[26],ani10MapLen/2);
        DMANow(3, ani10Tiles, &CHARBLOCKBASE[0], ani10TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 9000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani11Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani11Map, &SCREENBLOCKBASE[26],ani11MapLen/2);
        DMANow(3, ani11Tiles, &CHARBLOCKBASE[0], ani11TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 9500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani12Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani12Map, &SCREENBLOCKBASE[26],ani12MapLen/2);
        DMANow(3, ani12Tiles, &CHARBLOCKBASE[0], ani12TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 10000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani13Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani13Map, &SCREENBLOCKBASE[26],ani13MapLen/2);
        DMANow(3, ani13Tiles, &CHARBLOCKBASE[0], ani13TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 10500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani14Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani14Map, &SCREENBLOCKBASE[26],ani14MapLen/2);
        DMANow(3, ani14Tiles, &CHARBLOCKBASE[0], ani14TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 11000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani15Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani15Map, &SCREENBLOCKBASE[26],ani15MapLen/2);
        DMANow(3, ani15Tiles, &CHARBLOCKBASE[0], ani15TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 11500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani16Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani16Map, &SCREENBLOCKBASE[26],ani16MapLen/2);
        DMANow(3, ani16Tiles, &CHARBLOCKBASE[0], ani16TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 12000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani17Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani17Map, &SCREENBLOCKBASE[26],ani17MapLen/2);
        DMANow(3, ani17Tiles, &CHARBLOCKBASE[0], ani17TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 12500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani18Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani18Map, &SCREENBLOCKBASE[26],ani18MapLen/2);
        DMANow(3, ani18Tiles, &CHARBLOCKBASE[0], ani18TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 14000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani19Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani19Map, &SCREENBLOCKBASE[26],ani19MapLen/2);
        DMANow(3, ani19Tiles, &CHARBLOCKBASE[0], ani19TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 14250) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani20Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani20Map, &SCREENBLOCKBASE[26],ani20MapLen/2);
        DMANow(3, ani20Tiles, &CHARBLOCKBASE[0], ani20TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 14500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani21Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani21Map, &SCREENBLOCKBASE[26],ani21MapLen/2);
        DMANow(3, ani21Tiles, &CHARBLOCKBASE[0], ani21TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 14750) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani22Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani22Map, &SCREENBLOCKBASE[26],ani22MapLen/2);
        DMANow(3, ani22Tiles, &CHARBLOCKBASE[0], ani22TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 15000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani23Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani23Map, &SCREENBLOCKBASE[26],ani23MapLen/2);
        DMANow(3, ani23Tiles, &CHARBLOCKBASE[0], ani23TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 15250) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani24Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani24Map, &SCREENBLOCKBASE[26],ani24MapLen/2);
        DMANow(3, ani24Tiles, &CHARBLOCKBASE[0], ani24TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 15500) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani25Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani25Map, &SCREENBLOCKBASE[26],ani25MapLen/2);
        DMANow(3, ani25Tiles, &CHARBLOCKBASE[0], ani25TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aTimer2%20 == 0) {
        aniTimer++;
    }
    aTimer2++;
    if(aniTimer == 16000) {
        goToInstructions();
    }
}
void endAnimation() {
     if (aniTimer == 0) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani26Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani26Map, &SCREENBLOCKBASE[26],ani26MapLen/2);
        DMANow(3, ani26Tiles, &CHARBLOCKBASE[0], ani26TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 10000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani27Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani27Map, &SCREENBLOCKBASE[26],ani27MapLen/2);
        DMANow(3, ani27Tiles, &CHARBLOCKBASE[0], ani27TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 30000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani28Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani28Map, &SCREENBLOCKBASE[26],ani28MapLen/2);
        DMANow(3, ani28Tiles, &CHARBLOCKBASE[0], ani28TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aniTimer == 40000) {
        REG_BG0CNT = BG_SIZE0 | CBB(0) | SBB(26);
        loadPalette(ani29Pal);
        hOff = 0;
        vOff = 0;
        DMANow(3, ani29Map, &SCREENBLOCKBASE[26],ani29MapLen/2);
        DMANow(3, ani29Tiles, &CHARBLOCKBASE[0], ani29TilesLen/2);

        REG_BG0HOFS = 0;
        REG_BG0VOFS = 0;

        hideSprites();
        DMANow(3, shadowOAM, OAM, 512);
    }
    if (aTimer2%7 == 0) {
        aniTimer++;
    }
    aTimer2++;
}