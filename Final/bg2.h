
//{{BLOCK(bg2)

//======================================================================
//
//	bg2, 512x256@4, 
//	+ palette 16 entries, not compressed
//	+ 55 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 32 + 1760 + 4096 = 5888
//
//	Time-stamp: 2017-04-10, 18:43:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG2_H
#define GRIT_BG2_H

#define bg2TilesLen 1760
extern const unsigned short bg2Tiles[880];

#define bg2MapLen 4096
extern const unsigned short bg2Map[2048];

#define bg2PalLen 32
extern const unsigned short bg2Pal[16];

#endif // GRIT_BG2_H

//}}BLOCK(bg2)
