
//{{BLOCK(ani7)

//======================================================================
//
//	ani7, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 160 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5120 + 2048 = 7680
//
//	Time-stamp: 2017-04-24, 20:18:18
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ANI7_H
#define GRIT_ANI7_H

#define ani7TilesLen 5120
extern const unsigned short ani7Tiles[2560];

#define ani7MapLen 2048
extern const unsigned short ani7Map[1024];

#define ani7PalLen 512
extern const unsigned short ani7Pal[256];

#endif // GRIT_ANI7_H

//}}BLOCK(ani7)
