enum{Cross_Hair, Enemy, Health = Enemy + 20, TIME = Health + 6, SPECIAL = TIME + 3};
enum{VInstructions, VLose, VWin, VGame, VPause};

typedef struct {
    int x;
    int y;
    int xD;
    int yD;
} CROSSHAIR;

typedef struct {
    int sprite;
    int size;
    int currFrame;
    int x;
    int y;
    int dX;
    int active;
} ENEMY;

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
} BILL2;


void initVirus();
void vUpdate();
void goToVirusInstructions();
void updateVInstructions();
void goToVGame();
void updateVGame();
void goToVPause();
void updateVPause();
void goToVLose();
void updateVLose();
void goToVWin();
void updateVWin();
void initVirusGame();
void vUpdate();
void updateCrossHair(CROSSHAIR * c);
void drawCrossHair(CROSSHAIR * c);
void updateEnemies();
void drawEnemies();
void checkCollisionEnemy(ENEMY * e, int i);
void drawHealth();
void setVTimer();
void updateSpecial();
void drawSpecial();
void checkCollisionEnemySpecial(ENEMY * e, int i);