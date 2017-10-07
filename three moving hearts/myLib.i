# 1 "myLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "myLib.c"
# 1 "myLib.h" 1
# 23 "myLib.h"
void setPixel(int, int, unsigned short);
void drawHeart(int, int, unsigned short);
void drawRectangle(int, int, int, int, unsigned short);
void delay(int);
# 2 "myLib.c" 2

unsigned short *videoBuffer = (unsigned short *)0x6000000;

void drawHeart(int row, int col, unsigned short color) {
 int leftSide = 0;
 for (int ls = 0; ls < 7; ls ++) {
  setPixel(row + ls, col + 4 - leftSide, color);
  setPixel(row + ls, col + 4 + leftSide, color);
  setPixel(row + ls, col + 16 - leftSide, color);
  setPixel(row + ls, col + 16 + leftSide, color);
  leftSide++;

 }
 int rightSide = -2;
 for (int bs = 0; bs < 13; bs++) {
  setPixel(row + 7 + bs, col + rightSide, color);
  setPixel(row + 7 + bs, col + 20 - rightSide, color);
  rightSide++;

 }
}
void setPixel(int row, int col, unsigned short color) {
 videoBuffer[((row)*(240)+(col))] = color;
}

void drawRectangle(int row, int col, int height, int width, unsigned short color) {
 for (int c = 0; c < width; c++) {
  for (int r = 0; r < height; r++) {
   setPixel(r + row, c + col, color);
  }
 }
}
void delay(int amount) {
 volatile int trash = 0;
 for (int i = 0; i < 1000 * amount; i++) {
  trash++;
 }
}
