// マウスカーソル非表示 noCursor()

void setup(){
  size(100,100);
  noCursor();
}


void draw(){
  background(204);
  ellipse(mouseX,mouseY, 10,10);
}