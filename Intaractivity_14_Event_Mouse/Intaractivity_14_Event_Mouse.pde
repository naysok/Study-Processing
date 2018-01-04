//

int gray = 0;

void setup(){
  size(100,100);
}

void draw(){
  background(gray);
  println(gray);
}

void mousePressed(){
// void mouseReleased(){

  if (gray >= 255){
    gray = 0;
  }
  else{
    gray += 20;
  }
}
