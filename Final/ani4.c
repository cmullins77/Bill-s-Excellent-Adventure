
//{{BLOCK(ani4)

//======================================================================
//
//	ani4, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 167 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 5344 + 2048 = 7904
//
//	Time-stamp: 2017-04-24, 20:19:03
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short ani4Tiles[2672] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x8888,0x8888,0x8888,0x8181,0x8888,0x8181,0x8888,0x8181,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x1111,0x1811,0x8818,0x8818,0x1818,0x8888,
	0x1118,0x1188,0x1818,0x1888,0x8818,0x1888,0x8818,0x1888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8118,0x8811,0x1188,0x8818,0x8188,0x8818,0x8188,0x1818,

	0x8888,0x8888,0x8888,0x1811,0x8888,0x8818,0x8888,0x8818,
	0x8811,0x8818,0x8188,0x8818,0x8111,0x8818,0x8188,0x8818,
	0x8888,0x8888,0x8881,0x8888,0x8881,0x8888,0x8881,0x8888,
	0x1181,0x1118,0x1881,0x8188,0x1881,0x8818,0x8881,0x8811,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x1888,0x8888,0x1888,
	0x8888,0x1188,0x8888,0x1888,0x8888,0x1888,0x8888,0x1888,
	0x8888,0x8888,0x1888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1181,0x8118,0x1888,0x1188,0x1888,0x8188,0x1888,0x8188,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1811,0x1881,0x8118,0x8181,0x8818,0x1181,0x8818,0x8181,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x1888,0x8888,0x1888,
	0x8881,0x1188,0x8818,0x1888,0x8811,0x1888,0x8888,0x1888,
	0x8888,0x8888,0x8111,0x8888,0x8188,0x8888,0x8888,0x8888,
	0x1881,0x8811,0x8188,0x8188,0x8188,0x8188,0x8188,0x8188,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1811,0x1888,0x8118,0x8888,0x8818,0x8888,0x8818,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1181,0x8118,0x1811,0x8181,0x1881,0x8188,0x1881,0x8188,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8118,0x8888,0x1881,0x8888,0x1111,0x8888,0x8881,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8818,0x8888,0x8818,0x8888,
	0x8111,0x1118,0x8818,0x8881,0x8818,0x8881,0x8818,0x8881,
	0x8888,0x8888,0x8888,0x8118,0x8888,0x8188,0x8888,0x8188,
	0x8888,0x8188,0x8881,0x8188,0x8881,0x8188,0x8881,0x8188,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8118,0x8118,0x1888,0x8188,0x1118,0x8188,0x1881,0x1888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8111,0x1888,0x8818,0x8188,0x8881,0x8188,0x8881,0x8188,
	0x8888,0x8888,0x8811,0x8888,0x8818,0x8888,0x8818,0x8888,
	0x8811,0x8111,0x1818,0x1888,0x1818,0x1888,0x1818,0x1888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1811,0x1181,0x8818,0x8181,0x1818,0x8181,0x8188,0x8818,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1811,0x8881,0x8118,0x8881,0x8818,0x8881,0x8818,0x8881,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1188,0x1188,0x8888,0x1881,0x1188,0x1881,0x8818,0x1881,
	0x8888,0x8888,0x8888,0x1188,0x8888,0x1888,0x8888,0x1888,
	0x8118,0x1118,0x8181,0x1881,0x8188,0x1881,0x8188,0x1881,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8818,0x8888,0x8818,
	0x8888,0x8111,0x8888,0x8818,0x8888,0x8818,0x8888,0x8818,

	0x8888,0x8888,0x8888,0x8118,0x8888,0x8188,0x8888,0x8188,
	0x8118,0x8188,0x1888,0x8188,0x1118,0x1188,0x1881,0x8188,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8811,0x8811,0x1881,0x8188,0x1888,0x8111,0x1881,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8811,0x8888,0x8188,0x8888,0x8111,0x1888,0x8188,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1888,0x1181,0x8888,0x1811,0x8888,0x1881,0x8888,0x1881,

	0x8888,0x8888,0x8188,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8118,0x1118,0x8188,0x1881,0x8188,0x8881,0x8188,0x8881,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1188,0x8888,0x8818,0x8881,0x1118,0x8881,0x8818,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8111,0x1188,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8118,0x8888,

	0x1111,0x8118,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1111,0x1111,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8811,0x8881,0x8888,0x8881,0x1188,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8811,0x1888,0x8818,0x8888,0x8881,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x1181,0x1111,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8118,0x1811,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8811,0x1188,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1881,0x8811,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x8111,0x1888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1811,0x1181,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1118,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8118,0x1118,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8181,0x8888,

	0x8888,0x1118,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1118,0x1881,0x8888,0x1888,0x8888,0x8118,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x1888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8111,0x8111,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x8188,0x8818,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8111,0x8811,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1188,0x1111,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1181,0x1118,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x8881,0x8118,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1118,0x8111,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8811,0x8111,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x1111,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x1888,0x1811,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1111,0x1118,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1188,0x8881,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8188,0x8888,0x8188,0x8888,0x8188,0x1118,0x8188,0x8881,
	0x8188,0x8881,0x8188,0x8881,0x1118,0x1118,0x8888,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x1888,0x8811,0x8181,0x8188,
	0x8181,0x8188,0x8181,0x8188,0x1888,0x8811,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x1118,0x1888,0x8881,0x8181,
	0x8881,0x8181,0x8881,0x8181,0x1118,0x1888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8811,0x1118,0x8188,0x8881,
	0x8188,0x8881,0x8188,0x8881,0x8811,0x1118,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x1188,0x8118,0x1881,0x8181,
	0x1881,0x8188,0x1881,0x8188,0x1188,0x1181,0x8888,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x1811,0x1181,0x8118,0x1881,
	0x8818,0x1881,0x8818,0x1881,0x8111,0x1111,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8118,0x1811,0x8181,0x8118,
	0x8188,0x8818,0x8188,0x8818,0x1181,0x8111,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x1181,0x8118,0x1881,0x8181,
	0x1881,0x8188,0x1881,0x8188,0x1111,0x1181,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x1118,0x8881,0x1881,0x8888,
	0x8118,0x8888,0x8881,0x8888,0x1111,0x8888,0x8881,0x8881,

	0x8888,0x8888,0x8888,0x8888,0x1811,0x1881,0x8118,0x8881,
	0x8818,0x1881,0x8818,0x8181,0x8111,0x1811,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x1881,0x8111,0x8818,0x1881,
	0x8811,0x1881,0x8818,0x1881,0x8111,0x8111,0x8888,0x8881,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8188,0x8888,0x8888,0x8888,
	0x8181,0x8888,0x8181,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,

	0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0000,0x0000,
	0x1118,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0000,0x0000,
	0x1888,0x8811,0x8888,0x8888,0x8888,0x8888,0x8888,0x8888,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x1000,0x0000,0x1000,
	0x0000,0xC110,0x0000,0xC110,0x1000,0x4CC1,0x1000,0x4CC1,

	0x1000,0x1111,0x1000,0x1111,0x4111,0x9444,0x4111,0x9444,
	0x444C,0x9444,0x444C,0x9444,0x4444,0x9444,0x4444,0x9444,
	0x1111,0x1111,0x1111,0x1111,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x1111,0x0001,0x1111,0x0001,0x4449,0x1114,0x4449,0x1114,
	0x4449,0x4444,0x4449,0x4444,0x4449,0x4444,0x4449,0x4444,
	0x0000,0x0000,0x0000,0x0000,0x0001,0x0000,0x0001,0x0000,
	0x0114,0x0000,0x0114,0x0000,0x0114,0x0000,0x0114,0x0000,

	0x1000,0x4CC1,0x1000,0x4CC1,0xC110,0x444C,0xC110,0x444C,
	0xC110,0x444C,0xC110,0x444C,0xC110,0x444C,0xC110,0x444C,
	0x4444,0x9444,0x4444,0x9444,0x4444,0x9444,0x4444,0x9444,
	0x9444,0x9999,0x9444,0x9999,0x9444,0x9999,0x9444,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x4999,0x4444,0x4999,0x4444,0x4999,0x4444,0x4999,0x4444,
	0x9999,0x4999,0x9999,0x4999,0x9999,0x4999,0x9999,0x4999,

	0x1444,0x0001,0x1444,0x0001,0x1444,0x0001,0x1444,0x0001,
	0x4444,0x0114,0x4444,0x0114,0x4444,0x0114,0x4444,0x0114,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x1000,0x0000,0x1110,0x1000,0xA111,0x1100,0xAAA1,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x1000,0x1111,
	0x1111,0x1111,0xA111,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x0000,0x0000,0x0000,0x0000,0x1110,0x1111,0x1111,0x1111,
	0xAAA1,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,

	0x0000,0x0000,0x0000,0x0000,0x1111,0x1111,0x1111,0x1111,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x0000,0x0000,0x0000,0x0000,0x1111,0x0001,0x1111,0x1111,
	0xAAAA,0x111A,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0011,0x0000,0x1111,0x0000,0x111A,0x0000,0x1AAA,0x0001,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,

	0x9771,0x9999,0x9771,0x9999,0x9771,0x9999,0x9771,0x9999,
	0x9771,0x9999,0x9771,0x9999,0x9771,0x9999,0x9771,0x9999,
	0x9999,0x0119,0x9999,0x0119,0x9999,0x0119,0x9999,0x0119,
	0x9999,0x0119,0x9999,0x0119,0x9999,0x0119,0x9999,0x0119,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x1100,0x0000,0x1100,
	0x1110,0xAAAA,0xA110,0xAAAA,0xAA11,0xAAAA,0xAA11,0xAAAA,
	0xAAA1,0xAAAA,0xAAA1,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,

	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x1AAA,0x0011,0xAAAA,0x0111,0xAAAA,0x011A,0xAAAA,0x011A,
	0xAAAA,0x11AA,0xAAAA,0x11AA,0xAAAA,0x11AA,0xAAAA,0x11AA,
	0x9999,0x1999,0x9999,0x1999,0x9999,0x1999,0x9999,0x1999,
	0x9999,0x7999,0x9999,0x7999,0x9999,0x9999,0x9999,0x9999,
	0x9111,0x9999,0x9111,0x9999,0x9111,0x9999,0x9111,0x9999,
	0x4777,0x4444,0x4777,0x4444,0x4999,0x4444,0x4999,0x4444,

	0x9999,0x1999,0x9999,0x1999,0x9999,0x1999,0x9999,0x1999,
	0x4444,0x7444,0x4444,0x7444,0x4444,0x9444,0x4444,0x9444,
	0x9111,0x9999,0x9111,0x9999,0x9111,0x9999,0x9111,0x9999,
	0x9777,0x9999,0x9777,0x9999,0x9999,0x9999,0x9999,0x9999,
	0x0000,0x1100,0x0000,0x1100,0x0000,0x1100,0x0000,0x1100,
	0x0000,0x1100,0x0000,0x1100,0x0000,0x1100,0x0000,0x1100,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x0000,0x0000,0x0000,

	0x4CC1,0x9444,0x4CC1,0x9444,0x4CC1,0x9444,0x4CC1,0x9444,
	0x4CC1,0x4444,0x4CC1,0x4444,0xC110,0x444C,0xC110,0x444C,
	0x9999,0x4999,0x9999,0x4999,0x9999,0x4999,0x9999,0x4999,
	0x9444,0x4999,0x9444,0x4999,0x9444,0x4999,0x9444,0x4999,
	0x1444,0x1111,0x1444,0x1111,0x1444,0x1111,0x1444,0x1111,
	0x7444,0x7777,0x7444,0x7777,0x9444,0x9999,0x9444,0x9999,
	0x1111,0x4111,0x1111,0x4111,0x1111,0x4111,0x1111,0x4111,
	0x7777,0x4777,0x7777,0x4777,0x9999,0x4999,0x9999,0x4999,

	0x9444,0x9999,0x9444,0x9999,0x9444,0x9999,0x9444,0x9999,
	0x9444,0x4999,0x9444,0x4999,0x9444,0x4999,0x9444,0x4999,
	0x9999,0x1119,0x9999,0x1119,0x9999,0x9119,0x9999,0x9119,
	0x4444,0x9114,0x4444,0x9114,0x4444,0x9114,0x4444,0x9114,
	0x0111,0x0000,0x0111,0x0000,0x1999,0x0001,0x1999,0x0001,
	0x9999,0x0119,0x9999,0x0119,0x9999,0x0119,0x9999,0x0119,
	0x1000,0x4CC1,0x1000,0x4CC1,0x0000,0xC110,0x0000,0xC110,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,

	0x4444,0x4444,0x4444,0x4444,0x444C,0x4444,0x444C,0x4444,
	0xCCC1,0xCCCC,0xCCC1,0xCCCC,0x1111,0x1111,0x1111,0x1111,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,0x4444,
	0xCCCC,0xCCCC,0xCCCC,0xCCCC,0x1111,0x1111,0x1111,0x1111,
	0x4444,0x4444,0x4444,0x4444,0x4444,0x1444,0x4444,0x1444,
	0xCCCC,0x011C,0xCCCC,0x011C,0x1111,0x0111,0x1111,0x0111,
	0x1444,0x9771,0x1444,0x9771,0x1111,0x9771,0x1111,0x9771,
	0x1000,0x9771,0x1000,0x9771,0x1000,0x9771,0x1000,0x9771,

	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x1111,
	0xAAAA,0x1111,0x11AA,0xAAAA,0x11AA,0xAAAA,0xAA11,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x1111,0xAAA1,
	0x1111,0xAAA1,0xAAAA,0xA11A,0xAAA5,0xA11A,0xAAA5,0x1AAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAA1,0xAAAA,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x1110,0x0000,0x1110,
	0x1000,0x9991,0x1000,0x9991,0x7110,0x9997,0x7110,0x9997,

	0x1110,0x1111,0x1110,0x1111,0x9991,0x9999,0x9991,0x9999,
	0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,0x9999,
	0xA551,0x3AAA,0xA551,0x3AAA,0x5119,0x3AA5,0x5119,0x3AA5,
	0x5119,0x3AA5,0x5119,0x3AA5,0x5119,0x3AA5,0x5119,0x3AA5,
	0xA333,0xAAAA,0xA333,0xAAAA,0xA333,0xAAAA,0xA333,0xAAAA,
	0xA333,0xAAAA,0xA333,0xAAAA,0xA333,0x6AAA,0xA333,0x6AAA,
	0xAAAA,0x3AAA,0xAAAA,0x3AAA,0xAAAA,0x3AAA,0xAAAA,0x3AAA,
	0xAAAA,0x3AAA,0xAAAA,0x3AAA,0xA666,0x3AAA,0xA666,0x3AAA,

	0xA333,0x1AAA,0xA333,0x1AAA,0xA333,0x711A,0xA333,0x711A,
	0xA333,0x711A,0xA333,0x711A,0xA333,0x711A,0xA333,0x711A,
	0x7111,0x9997,0x7111,0x9997,0x9997,0x9999,0x9997,0x9999,
	0x9997,0x9999,0x9997,0x9999,0x9997,0x9999,0x9997,0x9999,
	0x9999,0x0119,0x9999,0x0119,0x1999,0x0001,0x1999,0x0001,
	0x1999,0x0001,0x1999,0x0001,0x0119,0x0000,0x0119,0x0000,
	0xAA11,0xAA5A,0xAAAA,0xA5AA,0xAAAA,0xAAAA,0x5AAA,0xAA55,
	0xAAAA,0xAAAA,0xAAAA,0xA5AA,0xAAAA,0xAA5A,0xAAAA,0xAAAA,

	0x5AA5,0x1AAA,0xA5AA,0xAAAA,0xAAAA,0xAAAA,0x5AA5,0xAA55,
	0xAAAA,0xAAAA,0xA5AA,0xAAAA,0x5AA5,0xAAAA,0xAAA5,0xAAAA,
	0xAAA1,0xAAAA,0xAA11,0xAAAA,0x1111,0x1111,0x1111,0x1111,
	0x5511,0x5555,0x5511,0x5555,0x5511,0x5555,0x5511,0x5555,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0x1111,0x1111,0x1111,0x1111,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0xAAAA,0x1AAA,0xAAAA,0xA11A,0x1111,0xA111,0x1111,0xA111,
	0x5555,0xA115,0x5555,0xA115,0x5555,0xA115,0x5555,0xA115,

	0xA5AA,0x11AA,0xAA5A,0x1AAA,0xAAAA,0x1AAA,0x55AA,0x1AA5,
	0xAAAA,0x1AAA,0xAA5A,0x1AAA,0xA5AA,0x1AAA,0xAAAA,0x1AAA,
	0x7110,0x9997,0x7110,0x9997,0x9771,0x9999,0x9771,0x9999,
	0x9771,0x9999,0x9771,0x9999,0x9771,0x9999,0x9771,0x9999,
	0x7999,0x1777,0x7999,0x1777,0x1779,0x1111,0x1779,0x1111,
	0x0119,0x1000,0x0119,0x1000,0x0119,0x1000,0x0119,0x1000,
	0xA551,0x3AAA,0xA551,0x3AAA,0xA551,0x3AAA,0xA551,0x3AAA,
	0xA551,0x3AAA,0xA551,0x3AAA,0xA551,0x3AAA,0xA551,0x3AAA,

	0xA333,0x666A,0xA333,0x666A,0xA333,0x6AAA,0xA333,0x6AAA,
	0xA333,0xAAAA,0xA333,0xAAAA,0xA333,0xAAAA,0xA333,0xAAAA,
	0x6666,0x3AA6,0x6666,0x3AA6,0xA666,0x3AAA,0xA666,0x3AAA,
	0xAAAA,0x3AAA,0xAAAA,0x3AAA,0xAAAA,0x3AAA,0xAAAA,0x3AAA,
	0xA333,0x711A,0xA333,0x711A,0xA333,0x111A,0xA333,0x111A,
	0xA333,0x011A,0xA333,0x011A,0xA333,0x011A,0xA333,0x011A,
	0x7777,0x1117,0x7777,0x1117,0x1111,0x0001,0x1111,0x0001,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0001,0x0000,0x0001,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0xAAA5,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,0xAAAA,
	0x5511,0x5555,0x5511,0x5555,0x5511,0x5555,0x5511,0x5555,
	0x5511,0x5555,0x1111,0x1111,0x1111,0x1111,0xAA11,0xAAAA,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x1111,0x1111,0x1111,0x1111,0xAAAA,0xAAAA,

	0x5555,0xA115,0x5555,0xA115,0x5555,0xA115,0x5555,0xA115,
	0x5555,0xA115,0x1111,0xA111,0x1111,0xA111,0xAAAA,0xA11A,
	0xAAAA,0x1AAA,0xAAAA,0x1AAA,0xAAAA,0x1AAA,0xAAAA,0x1AAA,
	0xAAAA,0x1AAA,0xAAAA,0x1AAA,0xAAAA,0x1AAA,0xAAAA,0x1AAA,
	0x0119,0x1000,0x0119,0x1000,0x0119,0x1000,0x0119,0x1000,
	0x0119,0x1000,0x0119,0x1000,0x0119,0x1000,0x0119,0x1000,
	0xA551,0xBAAA,0xA551,0xBAAA,0xDDD1,0xDDDD,0xDDD1,0xDDDD,
	0xDDD1,0xDDDD,0xDDD1,0xDDDD,0xEFF1,0xFEEE,0xEFF1,0xFEEE,

	0xABBB,0xAAAA,0xABBB,0xAAAA,0xDDDD,0xBBBD,0xDDDD,0xBBBD,
	0xDDDD,0xBBBD,0xDDDD,0xBBBD,0xEEEF,0xFEEE,0xEEEF,0xFEEE,
	0xAAAA,0xBAAA,0xAAAA,0xBAAA,0xDBBB,0xDDDD,0xDBBB,0xDDDD,
	0xDBBB,0xDDDD,0xDBBB,0xDDDD,0xEEEF,0xEEEE,0xEEEF,0xEEEE,
	0xABBB,0x011A,0xABBB,0x011A,0xDDDD,0x011D,0xDDDD,0x011D,
	0xDDDD,0x011D,0xDDDD,0x011D,0xEFFE,0x011E,0xEFFE,0x011E,
	0xAA11,0xAAAA,0xAA11,0xAAAA,0xAA11,0xAAAA,0xAA11,0xAAAA,
	0xAA11,0xAAAA,0xAA11,0xAAAA,0xAA11,0xAAAA,0xAA11,0xAAAA,

	0xAAAA,0xA11A,0xAAAA,0xA11A,0xAAAA,0xA11A,0xAAAA,0xA11A,
	0xAAAA,0xA11A,0xAAAA,0xA11A,0xAAAA,0xA11A,0xAAAA,0xA11A,
	0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,0x0000,0x1000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x9771,0x9999,0x9771,0x9999,0x9771,0x9999,0x9771,0x9999,
	0x7110,0x1777,0x7110,0x1777,0x1000,0x0111,0x1000,0x0111,
	0x0119,0x1000,0x0119,0x1000,0x0119,0x1000,0x0119,0x1000,
	0x0001,0x1000,0x0001,0x1000,0x0000,0x1000,0x0000,0x1000,

	0xEFF1,0xEFFE,0xEFF1,0xEFFE,0xFFF1,0xEEEF,0xFFF1,0xEEEF,
	0xEFF1,0xEEEE,0xEFF1,0xEEEE,0xEFF1,0xEEEE,0xEFF1,0xEEEE,
	0xEEEE,0xFEEE,0xEEEE,0xFEEE,0xEEEE,0xFEEE,0xEEEE,0xFEEE,
	0xEEEE,0xEEEE,0xEEEE,0xEEEE,0xEEEE,0x111E,0xEEEE,0x111E,
	0xEEEF,0xEEEE,0xEEEF,0xEEEE,0xEEEF,0xEEEE,0xEEEF,0xEEEE,
	0xEEEE,0xEEEE,0xEEEE,0xEEEE,0xF111,0xEEEF,0xF111,0xEEEF,
	0xFEEE,0x011F,0xFEEE,0x011F,0xEEEE,0x011E,0xEEEE,0x011E,
	0xEEEE,0x011E,0xEEEE,0x011E,0xEEEE,0x011E,0xEEEE,0x011E,

	0xEFF1,0xEEEE,0xEFF1,0xEEEE,0xEFF1,0xEEEE,0xEFF1,0xEEEE,
	0xEFF1,0xEEEE,0xEFF1,0xEEEE,0xEFF1,0xEEEE,0xEFF1,0xEEEE,
	0x1EEE,0x0001,0x1EEE,0x0001,0x1EEE,0x0001,0x1EEE,0x0001,
	0x1EEE,0x0001,0x1EEE,0x0001,0x1EEE,0x0001,0x1EEE,0x0001,
	0x1000,0xEFF1,0x1000,0xEFF1,0x1000,0xEFF1,0x1000,0xEFF1,
	0x1000,0xEFF1,0x1000,0xEFF1,0x1000,0xEFF1,0x1000,0xEFF1,
	0xEEEE,0x011E,0xEEEE,0x011E,0xEEEE,0x011E,0xEEEE,0x011E,
	0xEEEE,0x011E,0xEEEE,0x011E,0xEEEE,0x011E,0xEEEE,0x011E,

	0xDDD1,0xDDDD,0xDDD1,0xDDDD,0xDDD1,0xDDDD,0xDDD1,0xDDDD,
	0xDDD1,0xDDDD,0xDDD1,0xDDDD,0x1111,0x1111,0x1111,0x1111,
	0x1DDD,0x0001,0x1DDD,0x0001,0x1DDD,0x0001,0x1DDD,0x0001,
	0x1DDD,0x0001,0x1DDD,0x0001,0x1111,0x0001,0x1111,0x0001,
	0xDDDD,0x011D,0xDDDD,0x011D,0xDDDD,0x011D,0xDDDD,0x011D,
	0xDDDD,0x011D,0xDDDD,0x011D,0x1111,0x0111,0x1111,0x0111,
};

const unsigned short ani4Map[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007,0x0008,
	0x0009,0x000A,0x000B,0x000C,0x000D,0x000E,0x000F,0x0010,
	0x0011,0x0012,0x0013,0x0014,0x0015,0x0016,0x0017,0x0018,
	0x0019,0x001A,0x001B,0x001C,0x001D,0x001E,0x0000,0x0000,
	0x001E,0x001F,0x0020,0x0021,0x0022,0x0023,0x0024,0x0025,
	0x0026,0x0027,0x0028,0x0029,0x002A,0x002B,0x002C,0x002D,
	0x002E,0x002F,0x0030,0x0031,0x0032,0x0033,0x0034,0x0035,
	0x0036,0x0037,0x0038,0x0039,0x003A,0x001E,0x0000,0x0000,

	0x001E,0x003B,0x003C,0x003D,0x003E,0x003F,0x0040,0x0041,
	0x0042,0x0043,0x0044,0x0045,0x0046,0x0047,0x001E,0x001E,
	0x001E,0x001E,0x001E,0x001E,0x001E,0x001E,0x001E,0x001E,
	0x001E,0x001E,0x001E,0x001E,0x001E,0x001E,0x0000,0x0000,
	0x0048,0x0048,0x0048,0x0048,0x0048,0x0048,0x0048,0x0048,
	0x0048,0x0049,0x0048,0x004A,0x0048,0x0048,0x0048,0x0048,
	0x0048,0x0048,0x0048,0x0048,0x0048,0x0048,0x0048,0x0048,
	0x0048,0x0048,0x0048,0x0048,0x0048,0x0048,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x004B,0x004C,0x004D,0x004D,0x004E,
	0x004F,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0050,0x0051,0x0052,0x0052,0x0053,
	0x0054,0x0000,0x0000,0x0000,0x0055,0x0056,0x0057,0x0058,
	0x0058,0x0058,0x0058,0x0058,0x0058,0x0058,0x0058,0x0058,
	0x0058,0x0058,0x0058,0x0058,0x0059,0x005A,0x0000,0x0000,

	0x0000,0x0000,0x005B,0x005C,0x0052,0x0052,0x0052,0x0052,
	0x005D,0x0000,0x0000,0x005E,0x005F,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0061,0x0000,0x0000,
	0x0000,0x0000,0x005B,0x005C,0x0062,0x0063,0x0064,0x0065,
	0x005D,0x0000,0x0000,0x0066,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0000,0x0000,

	0x0000,0x0000,0x0067,0x0068,0x0069,0x006A,0x006B,0x006C,
	0x006D,0x006E,0x0000,0x0066,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x006F,0x0070,0x0071,0x0071,0x0072,
	0x0073,0x005D,0x0000,0x0066,0x0074,0x0075,0x0076,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0476,0x0475,0x0474,0x0000,0x0000,

	0x0000,0x0000,0x0077,0x0078,0x0079,0x007A,0x007B,0x007C,
	0x007D,0x007E,0x0000,0x0066,0x007F,0x0080,0x0081,0x0082,
	0x0082,0x0082,0x0082,0x0082,0x0082,0x0082,0x0082,0x0082,
	0x0082,0x0082,0x0082,0x0083,0x0480,0x0084,0x0000,0x0000,
	0x0000,0x0867,0x0085,0x0086,0x0087,0x0088,0x0089,0x008A,
	0x008B,0x008C,0x0000,0x0066,0x0060,0x008D,0x008E,0x008F,
	0x008F,0x008F,0x008F,0x008F,0x008F,0x008F,0x008F,0x008F,
	0x008F,0x008F,0x008F,0x0090,0x048D,0x0091,0x0000,0x0000,

	0x0000,0x005B,0x005C,0x0092,0x0093,0x0094,0x0095,0x0096,
	0x0000,0x0000,0x0000,0x0066,0x0060,0x0060,0x0097,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0098,0x0060,0x0091,0x0000,0x0000,
	0x0000,0x0099,0x009A,0x009B,0x009C,0x009D,0x009E,0x009F,
	0x0000,0x0000,0x0000,0x0066,0x0060,0x0060,0x0097,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0098,0x0060,0x0091,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x005B,0x00A0,0x00A1,0x00A2,0x00A3,
	0x0000,0x0000,0x0000,0x0066,0x0060,0x0060,0x0097,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0098,0x0060,0x0091,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x005B,0x00A4,0x00A5,0x04A5,0x00A6,
	0x0000,0x0000,0x0000,0x0066,0x0060,0x0060,0x0097,0x0060,
	0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,0x0060,
	0x0060,0x0060,0x0060,0x0098,0x0060,0x0091,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short ani4Pal[256] __attribute__((aligned(4)))=
{
	0x626C,0x0000,0x73FA,0x001F,0x77BD,0x1842,0x03FF,0x3E9A,
	0x7FFF,0x4AFE,0x28A5,0x5AD6,0x6F7B,0x0066,0x2529,0x1084,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(ani4)