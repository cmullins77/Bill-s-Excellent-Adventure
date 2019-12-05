
//{{BLOCK(ani8)

//======================================================================
//
//	ani8, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 167 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5344 + 2048 = 7904
//
//	Time-stamp: 2017-04-24, 20:18:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ANI8_H
#define GRIT_ANI8_H

#define ani8TilesLen 5344
extern const unsigned short ani8Tiles[2672];

#define ani8MapLen 2048
extern const unsigned short ani8Map[1024];

#define ani8PalLen 512
extern const unsigned short ani8Pal[256];

#endif // GRIT_ANI8_H

//}}BLOCK(ani8)
