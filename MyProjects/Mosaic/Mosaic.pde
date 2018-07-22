PImage img;

int n = 32;
int n2 = int(n/2);

String name = "ImageSample";
String type = ".jpg";


String loadName = name+type;
String saveName = "result/" + name + "-" +n+ ".jpg";




void setup(){

  size(1024, 1024);
  img = loadImage(loadName);
  noStroke();

  for (int i = 0; i < width; i = i + n){
    for (int j = 0; j < height; j = j + n){
      color c = img.get(i, j); // pick color
      fill(c);
      rect(i, j, n+n2, n+n2);
    }
  }
  save(saveName); // out
}
