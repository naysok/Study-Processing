// ARROW, CROSS, HAND, MOVE, TEXT,and WAIT

int i = 0;

void setup(){
  size(100,100);
  noLoop();
}

void draw(){
  background(204);

  line(mouseX,0, mouseX,height);
  line(0,mouseY, width,mouseY);
}

void mousePressed(){
  i++;
  redraw();
  println(i);

  if (i == 0){
    cursor(CROSS);
  }

  else if (i == 1){
    cursor(HAND);
  }

  else if (i == 2){
    cursor(MOVE);
  }

  else if (i == 3){
    cursor(TEXT);
  }

  else if (i == 4){
    cursor(WAIT);
  }
  else if (i == 5){
    cursor(ARROW);
  }

  else if (i == 6){
    cursor(CROSS);
    i = 0;
  }
}
