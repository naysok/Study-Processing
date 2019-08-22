//// Set Color Mode : RGB
colorMode(RGB);


//// Color >> R, G, B
color c = color(255, 0, 0);

float r_value = red(c);
float g_value = green(c);
float b_value = blue(c);
println(r_value);
println(g_value);
println(b_value);

fill(c);
rect(0, 0, width*0.5, height*0.5);





//// Set Color Mode : HSV
colorMode(HSB, 100);

//// HSV
color c_hsv = color(0, 100, 100);

r_value = red(c);
g_value = green(c);
b_value = blue(c);
println(r_value);
println(g_value);
println(b_value);

fill(c_hsv);
rect(width*0.5, 0, width, height*0.5);



//// Color Chart
for (int i=0; i<width; i++){
  color c_chart = color(i, 99, 99);
  stroke(c_chart);
  line(i, height*0.5, i, height);
  
}

