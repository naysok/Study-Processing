int x = 20;

void setup(){
  size(100,100);
  strokeWeight(4);

}

void draw(){

  background(204);

  // if the key is pressed
  if (keyPressed == true){
    x++; // add 1 to x
  }
  line(x,20,x-60,80);
}