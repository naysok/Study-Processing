// coded keys

int y = 70;


void setup(){
  size(200,200);
}


void draw(){
  background(204);

  line(10,height/2, 190,height/2);

  if (key == CODED){

    // 上（↑）
    if (keyCode == UP){
      y = 40;
    }
    // 下（↓）
    else if (keyCode == DOWN){
      y = height/2;
    }
    // otherwise
    else{
      y = 70;
    }

  }

  rect(50,y, 100,60);

}