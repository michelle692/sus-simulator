#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "text.h"

// Variables
PLAYER imposter;
BULLET bullets[BULLETCOUNT];
ASTROBUTTON astbtns[ASTBTNCOUNT];
WEAPON weapons[WEAPONCOUNT];
CREWMATE crewmates[CREWCOUNT];

int crewRemaining;
int sus;
int delay;


// Initialize the game
void initGame() {

	initPlayer();
	initBullets();
	initAstBtns();
	initWeapons();
	initCrew();

	crewRemaining = 4;
	sus = 0;
}

// Updates the game each frame
void updateGame() {

	updatePlayer();
	drawTaskBar();
	char *susStr = "sus bar";
    drawString(0, 0, susStr, BLACK);

	// Update all the bullets
	for (int i = 0; i < BULLETCOUNT; i++) {
		updateBullet(&bullets[i]);
	}

	// Update all the astbtns
	for (int i = 0; i < ASTBTNCOUNT; i++) {
		updateAstBtn(&astbtns[i]);
	}

	// Update all the weapons
	for (int i = 0; i < WEAPONCOUNT; i++) {
		updateWeapon(&weapons[i]);
	}

	// Update all the crewmates
	for (int i = 0; i < CREWCOUNT; i++) {
		updateCrewmate(&crewmates[i]);
	}

}

// Draws the game each frame
void drawGame() {

	drawPlayer();
	//drawBar();

	// Draw all the bullets
	for (int i = 0; i < BULLETCOUNT; i++) {
		drawBullet(&bullets[i]);
	}

	// Draw all the astbtns
	for (int i = 0; i < ASTBTNCOUNT; i++) {
		drawAstBtn(&astbtns[i]);
	}

	// Draw all the weapons
	for (int i = 0; i < WEAPONCOUNT; i++) {
		drawWeapon(&weapons[i]);
	}

	//Draw all the crewmates
	for (int i = 0; i < CREWCOUNT; i++) {
		drawCrewmate(&crewmates[i]);
	}
}

// Draws the bar protecting the imposter
void drawBar() {
	drawRect(0, 120, 240, 3, COLOR(17, 30, 25)); // col, row, width, height, color
}

// Initialize the imposter
void initPlayer() {
	imposter.row = 140;
	imposter.col = 118;
	imposter.oldRow = imposter.row;
	imposter.oldCol = imposter.col;
	imposter.cdel = 1;
	imposter.height = 19;
	imposter.width = 18;
	imposter.color = RED;
	imposter.bulletTimer = 20;
	imposter.hasWeapon = 0;

}

// Handle every-frame actions of the imposter
void updatePlayer() {

 	// Move the imposter
	if (BUTTON_HELD(BUTTON_LEFT) && imposter.col >= imposter.cdel) {

 		imposter.col -= imposter.cdel;

 	} else if (BUTTON_HELD(BUTTON_RIGHT) && imposter.col + imposter.width - 1 < SCREENWIDTH - imposter.cdel) {

 		imposter.col += imposter.cdel; 

 	} else if (BUTTON_HELD(BUTTON_UP) && imposter.row >= imposter.cdel) {
		 
		imposter.row -= imposter.cdel;

	} else if (imposter.row + imposter.height - 1 < SCREENHEIGHT - imposter.cdel) {

		imposter.row += imposter.cdel;

	}


 	 // Fire bullets
 	if (imposter.hasWeapon && BUTTON_PRESSED(BUTTON_B) && imposter.bulletTimer >= 20) {

 		 fireBullet();
 		 imposter.bulletTimer = 0;
 	}

	imposter.bulletTimer++;
}

   // Draw the imposter
 void drawPlayer() {

 	drawRect(imposter.oldCol, imposter.oldRow, imposter.width, imposter.height, BLACK);
 	//drawRect(imposter.col, imposter.row, imposter.width, imposter.height, imposter.color);
	int impMap[] = {0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0,
					0, 0, 0, 1, 1, 2, 2, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0,
					0, 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0,
					0, 0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 0, 0, 0, 0, 0,
					0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 1, 0, 0, 0, 0,
					0, 1, 3, 4, 4, 4, 3, 3, 1, 1, 2, 2, 2, 1, 0, 0, 0,
					1, 3, 3, 3, 3, 3, 3, 3, 5, 1, 2, 2, 2, 1, 1, 1, 0,
					1, 3, 3, 3, 3, 3, 3, 5, 5, 1, 2, 2, 2, 1, 2, 2, 1,
					0, 1, 5, 5, 5, 5, 5, 5, 1, 2, 2, 2, 2, 1, 2, 2, 1,
					0, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 1, 2, 2, 1,
					0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1,
					0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1,
					0, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 1, 2, 2, 1,
					0, 1, 2, 2, 2, 1, 1, 1, 1, 2, 2, 2, 2, 1, 1, 1, 6,
					0, 1, 2, 2, 2, 1, 0, 0, 0, 1, 2, 2, 2, 1, 6, 7, 6,
					0, 1, 2, 2, 2, 1, 0, 0, 0, 1, 2, 2, 2, 1, 6, 7, 6,
					0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 6, 6, 6,
					0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0,};

	int row = imposter.row;
	int col = imposter.col;
	for (int i = 0; i < 18; i++) {
		for (int j = 0; j < 17; j++) {
			if (impMap[OFFSET(i, j, 17)] == 1) {
				setPixel(col + i, row + j, WHITE);
			}
			if(impMap[OFFSET(i, j, 17)] == 2) {
				setPixel(col + i, row + j, RED);
			}
			if(impMap[OFFSET(i, j, 17)] == 3) {
				setPixel(col + i, row + j, LIGHTBLUE);
			}
			if(impMap[OFFSET(i, j, 17)] == 4) {
				setPixel(col + i, row + j, WHITE);
			}
			if(impMap[OFFSET(i, j, 17)] == 5) {
				setPixel(col + i, row + j, GRAY);
			}
			if(impMap[OFFSET(i, j, 17)] == 6) {
				setPixel(col + i, row + j, ORANGE);
			}
			if(impMap[OFFSET(i, j, 17)] == 7) {
				setPixel(col + i, row + j, YELLOW);
			}
		}
	}


 	imposter.oldRow = imposter.row;
 	imposter.oldCol = imposter.col;
 }

// Initialize the pool of bullets
void initBullets() {

	for (int i = 0; i < BULLETCOUNT; i++) {
		bullets[i].height = 2;
		bullets[i].width = 1;
		bullets[i].row = -(bullets[i].height);
		bullets[i].col = 0;
		bullets[i].oldRow = imposter.row;
		bullets[i].oldCol = imposter.col;
		bullets[i].rdel = -3;
		bullets[i].color = WHITE;
		bullets[i].active = 0;
	}
 }

// // Spawn a bullet
void fireBullet() {

	 for (int i = 0; i < BULLETCOUNT; i++) {
		 if (!(bullets[i].active)) {
			 bullets[i].row = imposter.row;
			 bullets[i].col = imposter.col + (imposter.width / 2) + (bullets[i].width / 2);
			 bullets[i].active = 1;
			 bullets[i].erased = 0;
			 break;
		 }
	 }

}

// // Handle every-frame actions of a bullet
void updateBullet(BULLET* b) {

	if (b->active) {
		(b->row)--;
		if (b->row < 0) {
			b->active = 0;
		}
	}

}

// // Draw a bullet
void drawBullet(BULLET* b) {

 	if(b->active) {
 		drawRect(b->oldCol, b->oldRow, b->width, b->height, BLACK);
 		drawRect(b->col, b->row, b->width, b->height, b->color);
 	} else if (!b->erased) {
 		drawRect(b->oldCol, b->oldRow, b->width, b->height, BLACK);
 		b->erased = 1;
 	}
 	b->oldRow = b->row;
 	b->oldCol = b->col;
}

// Initialize the astbtns
void initAstBtns() {

	for (int i = 0; i < ASTBTNCOUNT; i++) {
		astbtns[i].height = 10;
		astbtns[i].width = 10;
		astbtns[i].row = rand() % 110;
		astbtns[i].col = rand() % 160 + 42;
		astbtns[i].oldRow = astbtns[i].row;
		astbtns[i].oldCol = astbtns[i].col;
		astbtns[i].rdel = 1;
		astbtns[i].cdel = 1;
		astbtns[i].color = GRAY;
		astbtns[i].active = 1;
		astbtns[i].erased = 0;
	}
}

// Handle every-frame actions of an astbtn
void updateAstBtn(ASTROBUTTON* a) {

	if (a->active) {

		// Move the astbtn
		a->row += a->rdel;

		if (a->row + a->height-1 >= 160) {
			a->row = 0;
			a->col = rand() % 200 + 20;
		}

		// Handle astbtn-bullet collisions
		for (int i = 0; i < BULLETCOUNT; i++) {
			if (bullets[i].active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, a->col, a->row, a->width, a->height)) {
				bullets[i].active = 0;
				a->active = 0;
				imposter.hasWeapon = 0;
			}
		}

		//collision with imposter
		if (collision(imposter.col, imposter.row, imposter.width, imposter.height, a->col, a->row, a->width, a->height)) {
			a->active = 0;
			sus++;
		}

	}
	if (!(a->active)) {
		a->row = 0;
		a->col = rand() % 160 + 42;
		a->active = 1;
	}
}

// Draw an astbtns
void drawAstBtn(ASTROBUTTON *a) {
	if(a->active) {
		drawRect(a->oldCol, a->oldRow, a->width, a->height, BLACK);
		drawRect(a->col, a->row, a->width, a->height, a->color);
	} else if (!a->erased) {
		drawRect(a->oldCol, a->oldRow, a->width, a->height, BLACK);
		a->erased = 1;
	}
	a->oldRow = a->row;
	a->oldCol = a->col;
}

// initialize weapons
void initWeapons() {
	for (int i = 0; i < WEAPONCOUNT; i++) {
		weapons[i].height = 5;
		weapons[i].width = 5;
		weapons[i].row = rand() % 90;
		weapons[i].col = rand() % 180 + 35;
		weapons[i].oldRow = weapons[i].row;
		weapons[i].oldCol = weapons[i].col;
		weapons[i].rdel = 1;
		weapons[i].cdel = 1;
		weapons[i].color = GOLD;
		weapons[i].active = 1;
		weapons[i].erased = 0;
	}

}

void updateWeapon(WEAPON* w) {

	if (w->active) {

		// Move the weapon
		w->row += w->rdel;

		if (w->row + w->height-1 >= 160) {
			w->row = 0;
			w->col = rand() % 180 + 35;
		}

		//collision with imposter
		if (collision(imposter.col, imposter.row, imposter.width, imposter.height, w->col, w->row, w->width, w->height)) {
			imposter.hasWeapon = 1;
			w->active = 0;
		}
	}

	if (!(w->active)) {
		w->row = 0;
		w->col = rand() % 180 + 35;
		w->active = 1;
	}
}

// Draw a weapon
void drawWeapon(WEAPON* w) {
	if(w->active) {
		drawRect(w->oldCol, w->oldRow, w->width, w->height, BLACK);
		drawRect(w->col, w->row, w->width, w->height, w->color);
	} else if (!w->erased) {
		drawRect(w->oldCol, w->oldRow, w->width, w->height, BLACK);
		w->erased = 1;
	}
	w->oldRow = w->row;
	w->oldCol = w->col;
}

void initCrew() {
	for (int i = 0; i < CREWCOUNT; i++) {
		crewmates[i].height = 10;
		crewmates[i].width = 5;
		crewmates[i].row = rand() % 40 + 20;
		crewmates[i].col = rand() % 10;
		crewmates[i].oldRow = crewmates[i].row;
		crewmates[i].oldCol = crewmates[i].col;
		crewmates[i].rdel = 1;
		crewmates[i].cdel = 1;
		crewmates[i].color = CYAN;
		crewmates[i].active = 1;
		crewmates[i].erased = 0;
	}

	crewmates[1].col = -40;
}

void updateCrewmate(CREWMATE* c) {

	if (c->active) {

		// Move the crewmate
		c->col += c->cdel;

		if (c->col + c->width-1 >= 240) {
			c->col = 0;
			c->row = rand() % 40 + 20;
		}

		// Handle crewmate-bullet collisions
		for (int i = 0; i < CREWCOUNT; i++) {
			if (bullets[i].active && collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, c->col, c->row, c->width, c->height)) {
				bullets[i].active = 0;
				c->active = 0;
				imposter.hasWeapon = 0;
				crewRemaining--;
			}
		}

		//collision with imposter
		if (collision(imposter.col, imposter.row, imposter.width, imposter.height, c->col, c->row, c->width, c->height)) {
			c->active = 0;
			sus++;
		}
	}

	if (!(c->active)) {
		c->col = 0;
		c->row = rand() % 40 + 20;
		c->active = 1;
	}
}

void drawCrewmate(CREWMATE* c) {
	if(c->active) {
		drawRect(c->oldCol, c->oldRow, c->width, c->height, BLACK);
		drawRect(c->col, c->row, c->width, c->height, c->color);
	} else if (!c->erased) {
		drawRect(c->oldCol, c->oldRow, c->width, c->height, BLACK);
		c->erased = 1;
	}
	c->oldRow = c->row;
	c->oldCol = c->col;
}

void drawTaskBar() {
	drawRect(0, 0, ((SCREENWIDTH/6) * sus), 8, RED);
}