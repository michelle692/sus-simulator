# 1 "text.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "text.c"
# 1 "myLib.h" 1




typedef unsigned short u16;
# 25 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 44 "myLib.h"
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, unsigned short color);
void fillScreen(unsigned short color);


void waitForVBlank();
# 69 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 79 "myLib.h"
int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "text.c" 2
# 1 "text.h" 1

void drawChar(int col, int row, char ch, unsigned short color);
void drawString(int col, int row, char *str, unsigned short color);
# 3 "text.c" 2
# 1 "font.h" 1

extern const unsigned char fontdata_6x8[12288];
# 4 "text.c" 2


void drawChar(int col, int row, char ch, unsigned short color) {
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 8; j++) {
            if (fontdata_6x8[48*ch + i + 6*j]) {
                setPixel(col + i, row + j, color);
            }
        }
    }
}


void drawString(int col, int row, char *str, unsigned short color) {
    int i = 0;
    while(str[i] != '\0') {
        drawChar(col, row, str[i], color);
        i++;
        col += 6;
    }
}
