
//{{BLOCK(ani16)

//======================================================================
//
//	ani16, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 118 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3776 + 2048 = 6336
//
//	Time-stamp: 2017-04-24, 20:15:55
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_ANI16_H
#define GRIT_ANI16_H

#define ani16TilesLen 3776
extern const unsigned short ani16Tiles[1888];

#define ani16MapLen 2048
extern const unsigned short ani16Map[1024];

#define ani16PalLen 512
extern const unsigned short ani16Pal[256];

#endif // GRIT_ANI16_H

//}}BLOCK(ani16)
