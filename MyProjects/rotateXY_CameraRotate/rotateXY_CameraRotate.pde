import processing.opengl.*;

void setup() {
  size(600, 600, OPENGL);
  smooth();
}

void draw() {
  background(200);

  translate(width*0.5, height*0.5);
  rotateX(map(mouseY, 0, height, -PI, PI)*-1);
  rotateY(map(mouseX, 0, width, -PI, PI));

  // view origin
  stroke(0, 0, 0);
  box(25);

  // x
  stroke(200, 0, 0); //red
  line(0, 0, 0, 100, 0, 0);

  // y
  stroke(0, 200, 0); // green
  line(0, 0, 0, 0, 100, 0);

  // z
  stroke(0, 0, 200); // blue
  line(0, 0, 0, 0, 0, 100);

}

