#include <stdlib.h>
#include "myLib.h"
#include "game.h"
#include "text.h"
#include <stdio.h>

// Prototypes
void initialize();

// State Prototypes
void start();
void game();
void pause();
void win();
void lose();

void goToStart();
void goToGame();
void goToPause();
void goToWin();
void goToLose();


// States
enum {START, GAME, PAUSE, WIN, LOSE};
int state;


// Button Variables
unsigned short buttons;
unsigned short oldButtons;

// Random Seed
int seed;

// Variables
int crewRemaining;
char crewStr[15];
int sus;

int main() {

    initialize();

    while(1) {

        // Update button variables
        oldButtons = buttons;
        buttons = BUTTONS;
                
        // State Machine
        switch(state) {
            case START:
            start();
            break;
            case GAME:
            game();
            break;
            case PAUSE:
            pause();
            break;
            case WIN:
            win();
            break;
            case LOSE:
            lose();
            break;
        }
    }
}

// Sets up GBA
void initialize() {

    REG_DISPCTL = MODE3 | BG2_ENABLE;
    goToStart();

}

void start() {
    seed++;
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        srand(seed);
        initGame();
        goToGame();
    }
}


void game() {
    updateGame();
    waitForVBlank();

    //printing stars
    sprintf(crewStr, "crew: %d", crewRemaining);
    drawRect(36, 9, 40, 20, BLACK);
    drawString(2, 9, crewStr, RED);


    drawGame();
   
    if (crewRemaining == 0) {
        goToWin();
    }
    if (sus == 6) {
        goToLose();
    }

    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void win() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToStart() {
    fillScreen(BLACK);
    char *titleStr = "[THE VERY SUS SIMULATOR]";
    drawString(48, 70, titleStr, RED);
    char *str = "Press SELECT to play";
    drawString(60, 100, str, WHITE);
    state = START;

}

void goToGame() {
    fillScreen(BLACK);
    state = GAME;

}

void goToPause() {
    fillScreen(BLACK);
    char *str = "Paused";
    drawString(100, 100, str, WHITE);
    state = PAUSE;

}

void goToWin() {
    fillScreen(PINK);
    char *str1 = "Congrats! You killed";
    drawString(50, 80, str1, RED);
    char *str2 = "all the crewmates >:)";
    drawString(50, 100, str2, RED);
    state = WIN;

}

void goToLose() {
    fillScreen(BLACK);
    char *str1 = "Oh No! You were too sus...";
    drawString(30, 80, str1, WHITE);
    char *str2 = "the crewmates voted you off :(";
    drawString(30, 100, str2, WHITE);
    state = LOSE;

}
   



