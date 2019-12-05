enum{HUB_BILL_IDLE_LEFT, HUB_BILL_IDLE_RIGHT, HUB_BILL_LEFT, HUB_BILL_RIGHT, HUB_BILL_IDLE, VIRUS_COVER, A_BUTTON};
enum {GAME, SPLASH, INSTRUCTIONS, WIN, LOSE, PAUSE, TV, VIRUS, ANIMATION};


typedef struct {
    int x;
    int y;
    int dX;
    int worldX;
    int worldY;
    int aniState;
    int aState;
    int prevAniState;
    int currFrame;
    int moveSpeed;
} HUBBILL;

void init();
void goToGame();
void goToSplash();
void goToWin();
void goToLose();
void goToPause();
void updateGame();
void updateSplash();
void updateWin();
void updateLose();
void updatePause();
void hideSprites();
void goToTV();
void updateTV();
void updateHubBill(HUBBILL * b);
void drawHubBill(HUBBILL * b);
void goToInstructions();
void updateInstructions();
void setupSounds();
void playSoundA( const unsigned char* sound, int length, int frequency, int loops);
void playSoundB( const unsigned char* sound, int length, int frequency, int loops);
void pauseSound();
void unpauseSound();
void stopSound();
void updateVirus();
void goToVirus();
void setupInterrupts();
void interruptHandler();
void goToAnimation();
void updateAnimation();

extern void initVirus();
extern void vUpdate();