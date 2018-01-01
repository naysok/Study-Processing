void setup(){
  size(100,100);
  strokeWeight(4);
}

void draw(){

  background(204);

  // if the key is pressed
  if (keyPressed == true){
    line(20,20,80,80);
  }

  // otherwise
  else{
    rect(40,40,20,20);
  }
}