
//{{BLOCK(trees)

//======================================================================
//
//	trees, 512x256@4, 
//	+ palette 16 entries, not compressed
//	+ 374 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 32 + 11968 + 4096 = 16096
//
//	Time-stamp: 2017-03-13, 18:41:32
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TREES_H
#define GRIT_TREES_H

#define treesTilesLen 11968
extern const unsigned short treesTiles[5984];

#define treesMapLen 4096
extern const unsigned short treesMap[2048];

#define treesPalLen 32
extern const unsigned short treesPal[16];

#endif // GRIT_TREES_H

//}}BLOCK(trees)
