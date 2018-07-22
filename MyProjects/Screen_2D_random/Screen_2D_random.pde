void setup() {

  size(800, 800);
  noStroke();
}


void draw() {


  // fill
  for (int i=0; i<width; i+=4) {
    for (int j=0; j<height; j+=4) {
      fill(random(0,255));
      rect(i, j, 4, 4);
    }
  }
}


void keyPressed() {
  saveFrame("800X800/#####.jpg");
  println("saved");
  println(frameCount);
}

