# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 39 "myLib.h"
extern unsigned short *videoBuffer;
# 63 "myLib.h"
void setPixel(int x, int y, unsigned short color);
void setPixel4(int x, int y, unsigned char colorIndex);
void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control);
void drawRect3(int x, int y, int width, int height, unsigned short color);
void drawRect4(int x, int y, int width, int height, unsigned char colorIndex);
void drawRectInBounds3(int x, int y, int width, int height, unsigned short color);
void drawBackgroundImage3(const unsigned short * image);
void drawBackgroundImage4(volatile const unsigned short* image);
void drawImage3(const unsigned short* image, int x, int y, int width, int height);
void drawImage4(volatile const unsigned short* image, int x, int y, int width, int height);
void loadPalette(volatile const unsigned short* palette);
void fillScreen(unsigned short color);
void fillScreen4(unsigned char colorIndex);
void flipPage();
void waitForVBlank();
# 94 "myLib.h"
extern unsigned int oldButtons;
extern unsigned int buttons;
# 104 "myLib.h"
void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control);






typedef struct
{
        const volatile void *src;
        const volatile void *dst;
        unsigned int cnt;
} DMA_CONTROLLER;
# 232 "myLib.h"
typedef struct { u16 tileimg[8192]; } charblock;
typedef struct { u16 tilemap[1024]; } screenblock;
# 289 "myLib.h"
typedef struct{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
}OBJ_ATTR;

typedef struct {
    int row;
    int col;
} Sprite;
# 2 "myLib.c" 2

unsigned short *videoBuffer = (u16 *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer = (u16 *)0x600A000;


void setPixel(int x, int y, unsigned short color) {
 videoBuffer[((y)*(240)+(x))] = color;
}

void setPixel4(int x, int y, unsigned char colorIndex) {
 unsigned short pixel = videoBuffer[((y)*(240)+(x)) / 2];
    if (x & 1) {

        pixel &= 0x00FF;
        videoBuffer[((y)*(240)+(x))/2] = pixel | (colorIndex << 8);
    } else {
        pixel &= 0xFF00;
        videoBuffer[((y)*(240)+(x))/2] = pixel | colorIndex;
    }
}

void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control) {
 ((volatile DMA_CONTROLLER *) 0x40000B0)[channel].src = source;
 ((volatile DMA_CONTROLLER *) 0x40000B0)[channel].dst = destination;
 ((volatile DMA_CONTROLLER *) 0x40000B0)[channel].cnt = (1 << 31) | control;
}

void drawRect3(int x, int y, int width, int height, unsigned short color) {
 volatile unsigned short c = color;
    for(int r = 0; r < height; r++) {
     DMANow(3, &c, &videoBuffer[((y + r)*(240)+(x))], (2 << 23) | width);
    }
}

void drawRect4(int x, int y, int width, int height, unsigned char colorIndex) {
 unsigned short pixels = colorIndex << 8 | colorIndex;
    for(int r = 0; r < height; r++) {
        if(x & 1) {
            setPixel4(x, y + r, colorIndex);
            if(width & 1) {
                DMANow(3, &pixels, &videoBuffer[((y+r)*(240)+(x+1))/2], width/2 | (2 << 23));
            } else {
                DMANow(3, &pixels, &videoBuffer[((y+r)*(240)+(x+1))/2], (width/2 - 1) | (2 << 23));
                setPixel4(x + width - 1, y + r, colorIndex);
            }
        } else {
            if (width & 1) {
                DMANow(3, &pixels, &videoBuffer[((y+r)*(240)+(x))/2], width/2 | (2 << 23));
                setPixel4(x + width - 1, y + r, colorIndex);
            } else {
                DMANow(3, &pixels, &videoBuffer[((y+r)*(240)+(x))/2], width/2 | (2 << 23));
            }
        }
    }

}

void drawRectInBounds3(int x, int y, int width, int height, unsigned short color) {
 if(x < 0) {
  width += x;
  x = 0;
 }
 if(x + width > 240) {
  width -= ((x + width) - 240);
  x = 240;
 }
    drawRect3(x,y,width,height,color);
}

void drawBackgroundImage3(const unsigned short * image) {
 DMANow(3, (unsigned short*)image, videoBuffer, (240*160));
}

void drawBackgroundImage4(volatile const unsigned short* image) {

    DMANow(3, (unsigned short*)image, videoBuffer, (240*160)/2);
}

void drawImage3(const unsigned short* image, int x, int y, int width, int height) {
 int i;
 for(i = 0; i < height; i++) {
  DMANow(3, (unsigned short*)&image[((i)*(width)+(0))], &videoBuffer[((y+i)*(240)+(x))], (width));
 }
}

void drawImage4(volatile const unsigned short* image, int x, int y, int width, int height) {
    for(int r = 0; r < height; r++) {
        if(x & 1) {
            setPixel4(x, y + r, image[((r)*(width)+(0))/2]);
            DMANow(3, &image[((r)*(width)+(0))/2], &videoBuffer[((y+r)*(240)+(x+1))/2], (width/2));
            setPixel4(x + width - 1, y + r, image[((r)*(width)+(width-1))/2]);
        } else {
                DMANow(3, &image[((r)*(width)+(0))/2], &videoBuffer[((y+r)*(240)+(x))/2], width/2);
        }
    }
}

void loadPalette(volatile const unsigned short* palette) {
    DMANow(3, palette, ((u16 *)0x5000000), 256);
}

void fillScreen(unsigned short color) {
 volatile unsigned short c = color;
 DMANow(3, &c, videoBuffer, (2 << 23) | 240 * 160);
}

void fillScreen4(unsigned char colorIndex) {
 volatile unsigned short pixels = (colorIndex << 8) | (colorIndex);
    DMANow(3, &pixels, videoBuffer, (2 << 23) | (240 * 160)/2);
}

void flipPage() {
    if(*(unsigned short *)0x4000000 & (1<<4)) {
        *(unsigned short *)0x4000000 &= ~(1<<4);
        videoBuffer = backBuffer;
    }
    else {
        *(unsigned short *)0x4000000 |= (1<<4);
        videoBuffer = frontBuffer;
    }
}

void waitForVBlank() {
 while((*(volatile unsigned short *)0x4000006)>160);
 while((*(volatile unsigned short *)0x4000006)<160);
}
