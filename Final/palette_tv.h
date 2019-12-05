enum{BILL_IDLE_LEFT, BILL_IDLE_RIGHT, BILL_LEFT, BILL_RIGHT, BILL_JUMP_LEFT, BILL_JUMP_RIGHT,BILL_IDLE};
enum{PLAYER, TIME, STRUCTURE = TIME + 3};
enum{TVInstructions, TVLose, TVWin, TVGame, TVPause};


typedef struct {
    int x;
    int y;
    int dX;
    int dY;
    int prevDY;
    int aniState;
    int aState;
    int prevAniState;
    int currFrame;
    int jumpSpeed;
    int moveSpeed;
    float grav;
    int canJump;
    int jumping;
    int collided;
    int train;
    int active;
} BILL;

typedef struct {
    int active;
    int x;
    int y;
    int col;
} PLATFORM;

typedef struct {
    int y;
} DEATHZONE;

void pTUpdate();
void initTV();
void drawBill(BILL * b);
void updateBill(BILL * b);
void setTimer();
void changeCamera(int yOff);
void initPaletteTV();
void drawPlatforms();
void checkCollisionBillPlatform(BILL *b, PLATFORM * p);
void goToTVInstructions();
void updateTVInstructions();
void goToTVGame();
void updateTVGame();
void goToTVPause();
void updateTVPause();
void goToTVLose();
void updateTVLose();
void goToTVWin();
void updateTVWin();