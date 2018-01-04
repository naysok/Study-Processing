/*
frameRate() = defalut 60 fps
noLoop()
loop()
redraw()
*/

int frame = 0;

void setup(){
  size(100,100);

}

void draw(){
  // if 120 frames since the mouse
  if (frame > 120){

    // was pressed. stop the program
    noLoop();
    // and turn the background black
    background(0);

  }


  // otherwise, set the background
  else{

    // to light gray and draw lines
    background(204);
    // at the mouse position
    line(mouseX,0, mouseX,height);
    line(0,mouseY, width,mouseY);
    frame ++;
  }

  println(frame);
}

void mousePressed(){
  loop();
  frame = 0;
}