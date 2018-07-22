// mouseMoved | mouseDragged

int dragX;
int dragY;
int moveX;
int moveY;

void setup(){
  size(100,100);
  noStroke();
}

void draw(){
  background(204);

  fill(0);
  ellipse(dragX,dragY, 33,33); // black circle

  fill(255);
  ellipse(moveX,moveY, 33,33); // white circle

}

// Move gray circle
void mouseMoved(){
  moveX = mouseX;
  moveY = mouseY;
}

// Move black circle
void mouseDragged(){
  dragX = mouseX;
  dragY = mouseY;
}