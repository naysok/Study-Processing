// Mouse Position

void setup(){
  size(200, 200);
  fill(0);
}

void draw(){
  background(204);

  noStroke();
  // INSIDE
  if ((80 < mouseX)&&(mouseX < 160)&&
  (40 < mouseX)&&(mouseY < 160)){
    fill(255); // white
  }

  // OUTSIDE
  else{
    fill(0); // black
  }

  rect(80,40, 80,120);

  stroke(255,0,0);
  line(mouseX,0, mouseX,height);
  line(0,mouseY, width,mouseY);

}