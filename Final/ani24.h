
//{{BLOCK(ani24)

//======================================================================
//
//	ani24, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 159 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5088 + 2048 = 7648
//
//	Time-stamp: 2017-04-24, 20:13:36
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ANI24_H
#define GRIT_ANI24_H

#define ani24TilesLen 5088
extern const unsigned short ani24Tiles[2544];

#define ani24MapLen 2048
extern const unsigned short ani24Map[1024];

#define ani24PalLen 512
extern const unsigned short ani24Pal[256];

#endif // GRIT_ANI24_H

//}}BLOCK(ani24)
