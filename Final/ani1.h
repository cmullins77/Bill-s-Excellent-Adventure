
//{{BLOCK(ani1)

//======================================================================
//
//	ani1, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 127 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 4064 + 2048 = 6624
//
//	Time-stamp: 2017-04-24, 20:19:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ANI1_H
#define GRIT_ANI1_H

#define ani1TilesLen 4064
extern const unsigned short ani1Tiles[2032];

#define ani1MapLen 2048
extern const unsigned short ani1Map[1024];

#define ani1PalLen 512
extern const unsigned short ani1Pal[256];

#endif // GRIT_ANI1_H

//}}BLOCK(ani1)
