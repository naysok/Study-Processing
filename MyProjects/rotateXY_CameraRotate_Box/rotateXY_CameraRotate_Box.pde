import processing.opengl.*;

void setup() {
  size(600, 600, OPENGL);
  smooth();
}

void draw() {
  colorMode(RGB, 255, 255, 255);
  background(200);
  fill(255);

  translate(width*0.5, height*0.5, -200);
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

  stroke(0);

  colorMode(HSB, 200, 200, 80);


  // box
  for (int i=30; i<200; i+=20) {
    for (int j = 30; j<200; j+=20) {
      for (int k = 30; k<200; k+=20) {
        pushMatrix();
        translate(i, j, k);
        box(10);
        popMatrix();
      }
    }
  }
  // box
  
  
  
}
