// 視点
// Processing は、左手座標系

int len = 200;

void setup(){

  size(500,500,P3D);
  background(255);
  smooth();

  frameRate(60);

}

void draw(){

  background(255);

  // FPS
  fill(0);
  textSize(14);

  float fr = float(round(frameRate*pow(10,2))) /pow(10,2); // 四捨五入
  text(fr+" fps",50,50); // frameRate = fr

  int fc = frameCount;
  text("framecount : "+fc, 50,80); // frameCount = fc


  pushMatrix();

  // 視点
  translate(width*0.5,height*0.5);

  rotateX(frameCount*0.1);
  rotateY(frameCount*0.1);
  rotateZ(frameCount*0.1);

  strokeWeight(2);

  // X
  stroke(255,0,0);
  line(0,0,0, len,0,0);

  // Y
  stroke(0,255,0);
  line(0,0,0, 0,len,0);

  // Z
  stroke(0,0,255);
  line(0,0,0, 0,0,len);

  stroke(0);
  strokeWeight(1);
  fill(255);
  box(30);

  noFill();
  box(50);

  popMatrix();


}
