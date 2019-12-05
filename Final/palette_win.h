
//{{BLOCK(palette_win)

//======================================================================
//
//	palette_win, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 225 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 7200 + 2048 = 9280
//
//	Time-stamp: 2017-04-11, 17:20:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PALETTE_WIN_H
#define GRIT_PALETTE_WIN_H

#define palette_winTilesLen 7200
extern const unsigned short palette_winTiles[3600];

#define palette_winMapLen 2048
extern const unsigned short palette_winMap[1024];

#define palette_winPalLen 32
extern const unsigned short palette_winPal[16];

#endif // GRIT_PALETTE_WIN_H

//}}BLOCK(palette_win)
