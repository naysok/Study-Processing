PImage texX;
float PI6 = PI/6;
float sc =400;
float cos = cos(PI6)*sc;
float sin = sin(PI6)*sc;






String NAME = "Flower-01"; // INPUT






String file_name_load ="Square/" + NAME + ".jpg";
String file_name_save ="Result/" + NAME + "_Cube.jpg";
String file_name_print ="Save! " + NAME + "!";

void setup() {
  size(800, 860, P3D);
  background(255);
  //noStroke();
  stroke(255);
  noFill();
  textureMode(NORMAL);

  texX=loadImage(file_name_load);

  // noLoop(); // keyPressed??
}

void draw(){
    
  translate(width/2, height/2 );

  beginShape();
  texture(texX);
  vertex(-cos, -sin, 0, 0);
  vertex(-cos, sin, 0, 1);
  vertex(0, sc, 1, 1);
  vertex(0, 0, 1, 0);
  endShape();

  beginShape();
  texture(texX);
  vertex(cos, -sin, 0, 0);
  vertex(0, -sc, 0, 1);
  vertex(-cos, -sin, 1, 1);
  vertex(0, 0, 1, 0);
  endShape();

  beginShape();
  texture(texX);
  vertex(0, sc, 0, 0);
  vertex(0, 0, 1, 0);
  vertex(cos, -sin, 1, 1);
  vertex(cos, sin, 0, 1);
  endShape();
  
}

void keyPressed() {
  save(file_name_save);
  println(file_name_print);
}
