
//{{BLOCK(ani2)

//======================================================================
//
//	ani2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 181 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5792 + 2048 = 8352
//
//	Time-stamp: 2017-04-24, 20:19:24
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ANI2_H
#define GRIT_ANI2_H

#define ani2TilesLen 5792
extern const unsigned short ani2Tiles[2896];

#define ani2MapLen 2048
extern const unsigned short ani2Map[1024];

#define ani2PalLen 512
extern const unsigned short ani2Pal[256];

#endif // GRIT_ANI2_H

//}}BLOCK(ani2)
