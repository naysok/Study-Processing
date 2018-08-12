float PI3 = PI/3;
float SIN3 = sin(PI3);


int Dot_Count = 25;
int RAD = 15;



void setup() {
  // size(4000, 4000);
  size(1000, 1000);
  background(255);
  noStroke();
  fill(0);
  smooth();

  // noLoop(); // keyPressed??
}

void draw(){

  int len = int(width/Dot_Count);
  // println(len);


  for (int i=0; i <= width; i+=len){
    for (int j = 0; j<= height; j+=int(len*SIN3*2)){
      ellipse(i, j, RAD,RAD);
    }
  }

  for (int i=int(len*0.5); i <= width; i+=len){
    for (int j=int(len*SIN3); j<=height; j+=int(len*SIN3*2)){
      ellipse(i, j, RAD,RAD);
    }
  }


}

void keyPressed() {
  String save_name = "Result/"+ Dot_Count +"_" + RAD + ".jpg";
  save(save_name);

  println(frameCount);
}
