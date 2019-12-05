#include "myLib.h"

unsigned short *videoBuffer = (u16 *)0x6000000;

unsigned short *frontBuffer = (u16 *)0x6000000;
unsigned short *backBuffer =  (u16 *)0x600A000;


void setPixel(int x, int y, unsigned short color) {
	videoBuffer[OFFSET(y,x,240)] = color;
}

void setPixel4(int x, int y, unsigned char colorIndex) {
	unsigned short pixel = videoBuffer[OFFSET(y, x, 240) / 2];
    if (x & 1) {
        //ODD!
        pixel &= 0x00FF;
        videoBuffer[OFFSET(y,x,240)/2] = pixel | (colorIndex << 8);
    } else {
        pixel &= 0xFF00;
        videoBuffer[OFFSET(y,x,240)/2] = pixel | colorIndex;
    }
}

void DMANow(int channel, volatile const void* source, volatile const void* destination, unsigned int control) {
	DMA[channel].src = source; 
	DMA[channel].dst = destination; 
	DMA[channel].cnt = DMA_ON | control; 
}

void drawRect3(int x, int y, int width, int height, unsigned short color) {
	volatile unsigned short c = color;
    for(int r = 0; r < height; r++) {
    	DMANow(3, &c, &videoBuffer[OFFSET(y + r, x, 240)], DMA_SOURCE_FIXED | width); 
    }   
}

void drawRect4(int x, int y, int width, int height, unsigned char colorIndex) {
	unsigned short pixels = colorIndex << 8 | colorIndex; // This combines the index into a short so we can copy it easily
    for(int r = 0; r < height; r++) {
        if(x & 1) {
            setPixel4(x, y + r, colorIndex);
            if(width & 1) {
                DMANow(3, &pixels, &videoBuffer[OFFSET(y+r,x+1,240)/2], width/2 | DMA_SOURCE_FIXED);
            } else {
                DMANow(3, &pixels, &videoBuffer[OFFSET(y+r,x+1,240)/2], (width/2 - 1) | DMA_SOURCE_FIXED);
                setPixel4(x + width - 1, y + r, colorIndex);
            }
        } else {
            if (width & 1) {
                DMANow(3, &pixels, &videoBuffer[OFFSET(y+r,x,240)/2], width/2 | DMA_SOURCE_FIXED);
                setPixel4(x + width - 1, y + r, colorIndex);
            } else {
                DMANow(3, &pixels, &videoBuffer[OFFSET(y+r,x,240)/2], width/2 | DMA_SOURCE_FIXED);
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
		DMANow(3, (unsigned short*)&image[OFFSET(i,0, width)], &videoBuffer[OFFSET(y+i, x, SCREENWIDTH)], (width));
	}
}

void drawImage4(volatile const unsigned short* image, int x, int y, int width, int height) {
    for(int r = 0; r < height; r++) {
        if(x & 1) {
            setPixel4(x, y + r, image[OFFSET(r,0,width)/2]);
            DMANow(3, &image[OFFSET(r, 0, width)/2], &videoBuffer[OFFSET(y+r,x+1,240)/2], (width/2));
            setPixel4(x + width - 1, y + r, image[OFFSET(r,width-1,width)/2]);
        } else {
                DMANow(3, &image[OFFSET(r, 0, width)/2], &videoBuffer[OFFSET(y+r,x,240)/2], width/2);
        }
    }
}

void loadPalette(volatile const unsigned short* palette) {
    DMANow(3, palette, PALETTE, 256);
}

void fillScreen(unsigned short color) {
	volatile unsigned short c = color;
	DMANow(3, &c, videoBuffer, DMA_SOURCE_FIXED | 240 * 160); 
}

void fillScreen4(unsigned char colorIndex) {
	volatile unsigned short pixels = (colorIndex << 8) | (colorIndex);
    DMANow(3, &pixels, videoBuffer, DMA_SOURCE_FIXED | (240 * 160)/2); 
}

void flipPage() {
    if(REG_DISPCTL & BUFFER2) {
        REG_DISPCTL &= ~BUFFER2;
        videoBuffer = backBuffer;
    }
    else {
        REG_DISPCTL |= BUFFER2;
        videoBuffer = frontBuffer;
    }
}

void waitForVBlank() {
	while(SCANLINECOUNTER>160);
	while(SCANLINECOUNTER<160);
}