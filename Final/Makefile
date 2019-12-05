PRODUCT_NAME       = Project
SOURCES            = Jump.c shot.c GameWin.c bg1.c bg2.c splashMusic.c hubMusic.c virusMusic.c tvMusic.c theme.c  Bill_Jump_Sound.c myLib.c main.c virus.c virusBG.c virusInstructions.c virusSprites.c background.c sprites.c palette_tv.c title.c instructions.c hub.c hub_pause.c hubSprites.c paletteInstructions.c palette_pause.c palette_win.c palette_lose.c
DKPATH             = C:/devkitARM/bin
CCPATH             = C:/cygwin/bin
VBASIM             = "C:/Users/Cassie/Documents/School/4 - Spring 2017/CS 2261/vba/vba.exe"
FIND               = find
COPY               = cp -r

#C:/devkitARM/bin/arm-eabi-gcc -mthumb-interwork -marm -mlong-calls  -O2 -Wall -pedantic -Wextra -std=c99 -save-temps -D_ROM=Project.gba -D_VBA="C:/Users/Cassie/Documents/School/4 - Spring 2017/CS 2261/vba/vba.exe"  -c Jump.c -o Jump.o
# C:/devkitARM/bin/arm-eabi-gcc Jump.o shot.o GameWin.o bg1.o bg2.o splashMusic.o hubMusic.o virusMusic.o tvMusic.o theme.o hubBg2.o Bill_Jump_Sound.o myLib.o main.o virus.o virusBG.o virusInstructions.o virusSprites.o background.o sprites.o palette_tv.o title.o instructions.o hub.o hub_pause.o hubSprites.o paletteInstructions.o palette_pause.o palette_win.o palette_lose.o -specs=gba.specs -mthumb-interwork -marm -mlong-calls -lm -o Project.elf
# C:/devkitARM/bin/arm-eabi-objcopy -O binary Project.elf Project.gba

# --- File Names
ELF_NAME           = $(PRODUCT_NAME).elf
ROM_NAME           = $(PRODUCT_NAME).gba
BIN_NAME           = $(PRODUCT_NAME)

#MODEL              = -mthumb-interwork -mthumb
MODEL              = -mthumb-interwork -marm -mlong-calls #This makes interrupts work
SPECS              = -specs=gba.specs

# --- Archiver
AS                 = $(DKPATH)/arm-eabi-as
ASFLAGS            = -mthumb-interwork

# --- Compiler
CC                 = $(DKPATH)/arm-eabi-gcc
CFLAGS             = $(MODEL) -O2 -Wall -pedantic -Wextra -std=c99 -save-temps -D_ROM=$(ROM_NAME) -D_VBA=$(VBASIM) 


# --- Linker
LD                 = $(DKPATH)/arm-eabi-gcc
LDFLAGS            = $(SPECS) $(MODEL) -lm

# --- Object/Executable Packager
OBJCOPY            = $(DKPATH)/arm-eabi-objcopy
OBJCOPYFLAGS       = -O binary

# --- ROM Fixer
GBAFIX             = $(DKPATH)/gbafix

# --- Delete
RM                 = rm -f

OBJECTS = $(SOURCES:.c=.o)


# --- Main build target

all : clean build 

run : $(ROM_NAME)
	$(VBASIM) $(ROM_NAME)


build : $(ROM_NAME)

# --- Build .elf file into .gba ROM file
$(ROM_NAME) : $(ELF_NAME)
	$(OBJCOPY) $(OBJCOPYFLAGS) $(ELF_NAME) $(ROM_NAME)
	$(GBAFIX) $(ROM_NAME)

# --- Build .o files into .elf file
$(ELF_NAME) : $(OBJECTS)
	$(LD) $(OBJECTS) $(LDFLAGS) -o $@

# -- Build .c files into .o files
$(OBJECTS) : %.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@



clean:
	$(RM) $(ROM_NAME)
	$(RM) $(ELF_NAME)
	$(RM) $(BIN_NAME)
	$(RM) *.o