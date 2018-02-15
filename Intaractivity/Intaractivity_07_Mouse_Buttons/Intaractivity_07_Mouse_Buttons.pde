void setup(){
  size(200, 200);
  textSize(14);

}

void draw(){
  background(204);


  // mousePressed
  if (mousePressed == true){
    fill(255); // white
  }
  else{
    fill(0); // black
  }

  rect(25,25, 50,50);


  // -----


  //mouseButton
  if (mouseButton == LEFT){
    fill(255); // white
  }
  else if (mouseButton == RIGHT){
    fill(0); // black
  }
  else{
    fill(127); // gray
  }

  rect(25,125, 50,50);

  fill(0);
  text("mousePressed", 90,50);
  text("mouseButton", 90,150);

}