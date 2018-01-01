// Mouse Position

void setup(){
  size(200,200);

}


void draw(){
  noStroke();
  fill(0); // black

  background(204);

  // UPPER LEFT
  if ((mouseX <= width/2)&&(mouseY <= height/2)){
    rect(0,0, width/2,height/2);
  }

  // UPPER RIGHT
  else if((width/2 <= mouseX)&&(mouseY <= height/2)){
    rect(width/2,0, width/2,height/2);
  }

  // LOWER LEFT
  else if((mouseX <= width/2)&&(height/2 <= mouseY)){
    rect(0,height/2, width/2,height/2);
  }

  // LOWER RIGHT
  else{
    rect(width/2,height/2, width/2,height/2);
  }


  stroke(255,0,0);
  line(mouseX,0, mouseX,height);
  line(0,mouseY, width,mouseY);
}