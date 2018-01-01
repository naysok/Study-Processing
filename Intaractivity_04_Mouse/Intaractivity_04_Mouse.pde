// Mouse Position

void setup(){
  size(200,200);

}

void draw(){
  background(204);

  noStroke();
  fill(0);

  // RIGHT
  if (mouseX < width/2){
    rect(0,0, width/2,height/2);
  }
  // LEFT
  else{
    rect(width/2,0, width/2,height/2);
  }

  // -----

  fill(255);

  // RIGHT
  if (mouseX < width/3){
    rect(0,height/2, width/3,height/2);
  }
  // MIDDLE
  else if(mouseX < (width/3)*2){
    rect(width/3,height/2, width/3,height/2);
  }
  // LEFT
  else{
    rect((width/3)*2,height/2, width/3,height/2);
  }

  // -----

  stroke(255,0,0);
  line(mouseX,0, mouseX,height);
}