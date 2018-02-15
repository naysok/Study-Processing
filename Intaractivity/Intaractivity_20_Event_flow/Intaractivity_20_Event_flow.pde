void setup(){
  size(100,100);
  noLoop();
}

void draw(){
  background(204);

  line(mouseX,0, mouseX, height);
  line(0, mouseY, width, mouseY);

}


void mousePressed(){
  // Run the code in draw one time
  redraw();
}