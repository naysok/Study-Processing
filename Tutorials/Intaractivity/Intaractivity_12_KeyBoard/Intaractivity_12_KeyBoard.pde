// ASCII table

float angle = 0;

void setup(){
  background(204);
  size(100,200);


}

void draw(){
  stroke(0);

  // UPPER LINES
  if (keyPressed == true){
    int x = key - 32;
    line(x,0, x,height/2);
  }


  // LOWER ARC
  fill(204);
  noStroke();
  rect(0,height/2, width,height/2);

  fill(0);
  if (keyPressed == true){
    if ((32 <= key) && (key <= 126)){
      // if the key is alphanumeric
      // use its value as an angle
      angle = (key -32)*3;
    }
  }
  arc(50,150, 66,66, 0,radians(angle));



}