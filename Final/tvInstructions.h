
//{{BLOCK(tvInstructions)

//======================================================================
//
//	tvInstructions, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 258 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 8256 + 2048 = 10816
//
//	Time-stamp: 2017-04-24, 23:00:16
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TVINSTRUCTIONS_H
#define GRIT_TVINSTRUCTIONS_H

#define tvInstructionsTilesLen 8256
extern const unsigned short tvInstructionsTiles[4128];

#define tvInstructionsMapLen 2048
extern const unsigned short tvInstructionsMap[1024];

#define tvInstructionsPalLen 512
extern const unsigned short tvInstructionsPal[256];

#endif // GRIT_TVINSTRUCTIONS_H

//}}BLOCK(tvInstructions)
