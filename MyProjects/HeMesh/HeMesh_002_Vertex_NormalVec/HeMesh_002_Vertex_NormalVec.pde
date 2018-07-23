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
  creator.setEdge(200); // edge length in pixel
  creator.setWidthSegments(4).setHeightSegments(4).setDepthSegments(4);
  
  // alternatively
  // creator.setRadius(59);
  // creator.setInnerRadius(50);
  // creator.setOuterRadius(25);
  // creator.setMidRadius(10)
  
  creator.setCenter(0,0,0).setZAxis(1,1,1).setZAngle(PI/4);
  
  MESH = new HE_Mesh(creator);
  
  MESH.triangulate(); // mesh triangulation
  
  RENDER = new WB_Render(this); // render object initialize
}



void draw(){
  background(200);
  translate(width*0.5, height*0.5);
  
  rotateX(map(mouseY, 0,height, -PI,PI)*-1);
  rotateY(map(mouseX, 0,width, -PI,PI));
  
  directionalLight(255,255,255, 1,1,-1);
  directionalLight(200,200,200, -1,-1,1);
  
  // HeMesh
  // we draw our face using render object
  noStroke();
  fill(0,0,255);
  RENDER.drawFaces(MESH); // draw mesh faces
  
  fill(0,255,0); // grern
  RENDER.drawVertices(2, MESH); // draw Mesh verteices
  
  stroke(255,0,0); // red
  RENDER.drawVertices(10,MESH);
  
  stroke(0);
  stroke(255);
  RENDER.drawEdges(MESH); // draw MESH edges
  
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.jpg");
  }
}
