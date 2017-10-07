#include "myLib.h"

int row = 50;
int col = 42;
int row2 = 90;
int col2 = 110;
int col3 = 180;
void initialize() {
	REG_DISPCTL = BG2_ENABLE | MODE3;
	drawRectangle(0, 0, 80, 240, WHITE);
    drawRectangle(80, 0, 80, 240, MAGENTA);
}

int main() {
    initialize();
    while(1){
        //Left one
        for (int i = 0; i < 40; i++) {
            drawHeart(row + i, col, MAGENTA);
            drawHeart(row2 - i, col2, WHITE);
            drawHeart(row + i, col3, MAGENTA);
            delay(3);
            drawHeart(row + i, col, WHITE);
            drawHeart(row2 - i, col2, MAGENTA);
            drawHeart(row + i, col3, WHITE);
        }
        for (int j = 0; j < 40; j ++) {
            drawHeart(row2 - j, col, WHITE);
            drawHeart(row + j, col2, MAGENTA);
            drawHeart(row2 - j, col3, WHITE);
            delay(3);
            drawHeart(row2 - j, col, MAGENTA);
            drawHeart(row + j, col2, WHITE);
            drawHeart(row2 - j, col3, MAGENTA);
        }
        
    }
}