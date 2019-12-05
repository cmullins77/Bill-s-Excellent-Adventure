
//{{BLOCK(hub)

//======================================================================
//
//	hub, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 5 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 160 + 2048 = 2240
//
//	Time-stamp: 2017-04-04, 15:47:08
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_HUB_H
#define GRIT_HUB_H

#define hubTilesLen 160
extern const unsigned short hubTiles[80];

#define hubMapLen 2048
extern const unsigned short hubMap[1024];

#define hubPalLen 32
extern const unsigned short hubPal[16];

#endif // GRIT_HUB_H

//}}BLOCK(hub)
