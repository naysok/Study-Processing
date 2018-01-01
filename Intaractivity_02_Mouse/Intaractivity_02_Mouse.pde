// Mouse Position

void setup(){
  size(200, 200);
  textSize(24);

}

void draw(){
  float x = mouseX;
  float y = mouseY;

  float ix = width - mouseX; // inverse X、反転
  float iy = height - mouseY; // inverse Y

  background(126);
  noStroke();

  fill(255,150); // white
  ellipse(x,y, 66,66);

  fill(0,159); // black
  ellipse(ix,iy, 66,66);


  // RED mouse pos
  stroke(255,0,0);
  line(x,0, x,height);
  line(0,y, width,y);

  // BLUE mouse pos
  stroke(0,0,255);
  fill(0,0,255);
  text("pmouse",ix+5,iy-5);
  line(ix,0, ix,height);
  line(0,iy, width,iy);

}
