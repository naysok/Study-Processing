void setup(){
  size(100, 200);
  noStroke();
}

void draw(){
  background(126);

  fill(255); // white

  // TOP circle
  ellipse(mouseX,16, 33,33);

  // Middle circle
  ellipse(mouseX+20,50, 33,33);

  // BOTTOM circle
  ellipse(mouseX-20,84, 33,33);

  fill(0); // black

  // TOP circle
  ellipse(mouseX,116, 33,33);

  // MIDDLE circle
  ellipse(mouseX/2,150, 33,33);

  // BOTTOM circle
  ellipse(mouseX*2,184,33,33);

}