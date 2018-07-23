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
HEC_Cube creator; // our creator object


void setup(){
  size(600,600,OPENGL);
  
  creator = new HEC_Cube(); // our creator
  
  // creator parametors
  creator.setEdge(100);
  MESH = new HE_Mesh(creator); // add our creator parametors to our mesh
  
  // simple chamfer modifier
  HEM_ChamferEdges edges = new HEM_ChamferEdges().setDistance(20);
  MESH.modify(edges); // add our modifier to the mesh
  
  HEM_ChamferCorners chamfer = new HEM_ChamferCorners().setDistance(0);
  MESH.modify(chamfer); // add our modifier to the mesh
  
  // MESH.triangulate(); // mesh triangulation
  
  RENDER = new WB_Render(this); // RENDER MESH
}

void draw(){
  background(200);
  
  translate(width*0.5, height*0.5);
  rotateX(map(mouseY, 0,height, -PI,PI)*-1);
  rotateY(map(mouseX, 0,width, -PI,PI));
  
  // HeMesh
  noStroke();
  fill(0,255,255);
  RENDER.drawFaces(MESH); // draw MESH faces
  
  stroke(0,0,255);
  strokeWeight(2);
  RENDER.drawEdges(MESH); // draw MESH edges
}


void keyPressed(){
  if (key == 'e'){
    // HeMesh includes a method for exporting geometry
    // int STL file format which is very handy for 3D printing
    HET_Export.saveToSTL(MESH, sketchPath("meshes"), "edge20_corner0");
    // HET_Export.saveToOBJ(MESH, sketchPath("meshes"), "test02");
  }
  if (key == 's'){
    saveFrame("####.jpg");
  }
}
