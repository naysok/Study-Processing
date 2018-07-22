
float angle;


void setup(){
  size(500, 500, P3D);
  noStroke();

}


void draw(){

  background(255); // black
  camera(width/2, height/2, 300, width/2, height/2, 0, 0,1,0);

  // pointLight(r,g,b, x,y,z)
  pointLight(200,200,200, width/2,height/2,-200);

  translate(width/2, height/2);
  rotateY(angle);

  beginShape(QUADS);
  normal(0,0,1);
  fill(50,50,200); // blue
  vertex(-100,100);
  vertex(100,100);
  fill(200,50,50); // red
  vertex(100,-100);
  vertex(-100,-100);
  endShape();

  angle += 0.01;

}