// Mouse Position
// pmouseX,pmouseY 前のフレームの座標

void setup(){
  size(200, 200);
  strokeWeight(8);
  frameRate(12);
}


void draw(){
  background(204);
  line(mouseX,mouseY, pmouseX,pmouseY);

  println(mouseX, pmouseX);
}
