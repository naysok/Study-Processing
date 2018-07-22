void setup(){
  size(100,100);
  strokeWeight(4);
  textSize(70);

}

void draw(){

  background(204);

  // if the 'a' key is pressed draw a 'a'
  // if ((keyPressed == true) && ((key == 'a') || (key == 'A'))) {
  if ((keyPressed == true) && (key == 'a')){
    text("a",20,75);
  }

  // else if the 'b' key is pressed draw a 'B'
  else if ((keyPressed == true) && (key == 'b')){
    text("B",20,75);
  }


  // otherwise
  else{
    ellipse(50,50,50,50);
  }



}


