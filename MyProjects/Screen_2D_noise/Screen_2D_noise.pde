float noiseX = 0.0;
float noiseY = 0.0;

float noiseT = 0.0;

float start = 0.0;

float step = 0.02;


void setup() {
  size(800, 800);
  // size(400,400);
}


void draw() {
  loadPixels();

  noiseY = start;
  for (int y=0; y<height; y++) {

    noiseX = start;
    for (int x=0; x<width; x++) {

      float c = noise(noiseX, noiseY, noiseT)*255;
      pixels[y*width +x] = color(c);

      noiseX += step;
    }
    noiseY += step;
  }
  noiseT += 0.01;
  updatePixels();


}


void keyPressed(){
  saveFrame("800x800/#####.jpg");
  println("saved");
  println(frameCount);
}


