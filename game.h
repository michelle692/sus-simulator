// Cannon Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int bulletTimer;
	int hasWeapon;
} PLAYER;

// Bullet Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} BULLET;


// AstroButton Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} ASTROBUTTON;

// Star Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} WEAPON;

// Crewmate Struct
typedef struct {
	int row;
	int col;
	int oldRow;
	int oldCol;
	int rdel;
	int cdel;
	int height;
	int width;
	unsigned short color;
	int active;
	int erased;
} CREWMATE;

// Constants
#define BULLETCOUNT 3
#define ASTBTNCOUNT 4
#define WEAPONCOUNT 2
#define CREWCOUNT 2

// Variables
extern PLAYER imposter;
extern BULLET bullets[BULLETCOUNT];
extern ASTROBUTTON astbtns[ASTBTNCOUNT];
extern WEAPON weapons[WEAPONCOUNT];
extern CREWMATE crewmates[CREWCOUNT];

extern int crewRemaining;
extern int sus;

// Prototypes
void initGame();
void updateGame();
void drawGame();
void drawBar();
// player functions
void initPlayer();
void updatePlayer();
void drawPlayer(); 
// object functions
void initBullets();
void fireBullet();
void updateBullet(BULLET *);
void drawBullet(BULLET *);

void initAstBtns();
void updateAstBtn(ASTROBUTTON *);
void drawAstBtn(ASTROBUTTON *); 

void initWeapons();
void updateWeapon(WEAPON *);
void drawWeapon(WEAPON *);

void initCrew();
void updateCrewmate(CREWMATE *);
void drawCrewmate(CREWMATE *);

void updateTaskBar();
void drawTaskBar();
