// qiita heMesh
// http://qiita.com/lucas29liao/items/19c64ee5d8fe99714ecd

import processing.opengl.*;

import wblut.math.*;
import wblut.processing.*;
import wblut.nurbs.*;
import wblut.core.*;
import wblut.hemesh.*;
import wblut.geom.*;

// HeMesh classes & objects
HE_Mesh MESH; // our mesh object
WB_Render RENDER; // our render object


void setup(){
  size(600, 600, OPENGL);
  
  // our creator
  HEC_Cube creator = new HEC_Cube();
  
  // creator parameters
  creator.setEdge(100); // edge length in pixel
  
  MESH = new HE_Mesh(creator); // add creator object to our mesh object
  RENDER = new WB_Render(this); // render object initialize
}



void draw(){
  background(200);
  translate(width*0.5, height*0.5);
  
  rotateX(map(mouseY, 0,height, -PI,PI)*-1);
  rotateY(map(mouseX, 0,width, -PI,PI));
  
  directionalLight(255,255,255, 1,1,-1);
  directionalLight(127,127,127, -1,-1,1);
  
  // HeMesh
  // we draw our face using render object
  noStroke();
  fill(0,255,255);
  RENDER.drawFaces(MESH); // draw mesh faces
  
  strokeWeight(2);
  stroke(0);
  RENDER.drawEdges(MESH); // draw MESH edges
  
}
