
//{{BLOCK(ani9)

//======================================================================
//
//	ani9, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 147 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4704 + 2048 = 7264
//
//	Time-stamp: 2017-04-24, 20:17:50
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ANI9_H
#define GRIT_ANI9_H

#define ani9TilesLen 4704
extern const unsigned short ani9Tiles[2352];

#define ani9MapLen 2048
extern const unsigned short ani9Map[1024];

#define ani9PalLen 512
extern const unsigned short ani9Pal[256];

#endif // GRIT_ANI9_H

//}}BLOCK(ani9)
