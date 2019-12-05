
//{{BLOCK(bg1)

//======================================================================
//
//	bg1, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 42 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 1344 + 4096 = 5952
//
//	Time-stamp: 2017-04-24, 21:03:32
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BG1_H
#define GRIT_BG1_H

#define bg1TilesLen 1344
extern const unsigned short bg1Tiles[672];

#define bg1MapLen 4096
extern const unsigned short bg1Map[2048];

#define bg1PalLen 512
extern const unsigned short bg1Pal[256];

#endif // GRIT_BG1_H

//}}BLOCK(bg1)
