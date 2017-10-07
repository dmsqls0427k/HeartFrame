# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "myLib.h" 1
# 23 "myLib.h"
void setPixel(int, int, unsigned short);
void drawHeart(int, int, unsigned short);
void drawRectangle(int, int, int, int, unsigned short);
void delay(int);
# 2 "main.c" 2

int row = 50;
int col = 42;
int row2 = 90;
int col2 = 110;
int col3 = 180;
void initialize() {
 (*(unsigned short *)0x4000000) = (1<<10) | 3;
 drawRectangle(0, 0, 80, 240, ((31) | (31)<<5 | (31)<<10));
    drawRectangle(80, 0, 80, 240, ((31) | (0)<<5 | (31)<<10));
}

int main() {
    initialize();
    while(1){

        for (int i = 0; i < 40; i++) {
            drawHeart(row + i, col, ((31) | (0)<<5 | (31)<<10));
            drawHeart(row2 - i, col2, ((31) | (31)<<5 | (31)<<10));
            drawHeart(row + i, col3, ((31) | (0)<<5 | (31)<<10));
            delay(3);
            drawHeart(row + i, col, ((31) | (31)<<5 | (31)<<10));
            drawHeart(row2 - i, col2, ((31) | (0)<<5 | (31)<<10));
            drawHeart(row + i, col3, ((31) | (31)<<5 | (31)<<10));
        }
        for (int j = 0; j < 40; j ++) {
            drawHeart(row2 - j, col, ((31) | (31)<<5 | (31)<<10));
            drawHeart(row + j, col2, ((31) | (0)<<5 | (31)<<10));
            drawHeart(row2 - j, col3, ((31) | (31)<<5 | (31)<<10));
            delay(3);
            drawHeart(row2 - j, col, ((31) | (0)<<5 | (31)<<10));
            drawHeart(row + j, col2, ((31) | (31)<<5 | (31)<<10));
            drawHeart(row2 - j, col3, ((31) | (0)<<5 | (31)<<10));
        }

    }
}
