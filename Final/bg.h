
//{{BLOCK(bg)

//======================================================================
//
//	bg, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 6 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 192 + 2048 = 2272
//
//	Time-stamp: 2017-04-04, 15:44:22
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG_H
#define GRIT_BG_H

#define bgTilesLen 192
extern const unsigned short bgTiles[96];

#define bgMapLen 2048
extern const unsigned short bgMap[1024];

#define bgPalLen 32
extern const unsigned short bgPal[16];

#endif // GRIT_BG_H

//}}BLOCK(bg)
