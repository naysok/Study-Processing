int i = 0;

void setup(){
  frameRate(10);
}

void draw(){
  i += 1;
  println(i);
  line(0,i,i,i);
}

