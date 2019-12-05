
//{{BLOCK(GameWin)

//======================================================================
//
//	GameWin, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 294 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 9408 + 2048 = 11488
//
//	Time-stamp: 2017-04-11, 20:20:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEWIN_H
#define GRIT_GAMEWIN_H

#define GameWinTilesLen 9408
extern const unsigned short GameWinTiles[4704];

#define GameWinMapLen 2048
extern const unsigned short GameWinMap[1024];

#define GameWinPalLen 32
extern const unsigned short GameWinPal[16];

#endif // GRIT_GAMEWIN_H

//}}BLOCK(GameWin)
