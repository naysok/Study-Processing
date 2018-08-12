void setup() {

  size(800, 800);
  noStroke();
}


void draw() {

   int XY_Size = 1;

  // fill
  for (int i=0; i<width; i+=XY_Size) {
    for (int j=0; j<height; j+=XY_Size) {
      fill(random(0,255));
      rect(i, j, XY_Size, XY_Size);
    }
  }
}


void keyPressed() {
  saveFrame("800X800/#####.jpg");
  println("saved");
  println(frameCount);
}

