//Draw a Chess board
color backgroundColor = color(0, 0, 200);
int WIDTH = 500;
int HEIGHT = 500;
int BLOCKX = WIDTH / 8;
int BLOCKY = HEIGHT / 8;

void setup() {
  size(500, 500); //Should work for any square window
}


void draw() {
  boolean square = true; 

  for (int i = 0; i < 8; i ++) {
    for (int j = 0; j < 8; j++) {
      if (square) {
        fill(255);
      } else {
        fill(0);
      }
      rect(i * BLOCKX, j * BLOCKY, (i + 1) * BLOCKX, (j + 1) * BLOCKY);
      square = !square;
    }
     square = !square;
  }
}