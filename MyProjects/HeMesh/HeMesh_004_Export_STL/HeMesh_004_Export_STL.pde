// qiita heMesh
// http://qiita.com/lucas29liao/items/19c64ee5d8fe99714ecd

import processing.opengl.*;

import wblut.math.*;
import wblut.processing.*;
import wblut.nurbs.*;
import wblut.core.*;
import wblut.hemesh.*;
import wblut.geom.*;

// HeMesh Classes & objects
HE_Mesh MESH;
WB_Render RENDER;


void setup(){
  size(600,600,OPENGL);
  
  // our creator
  HEC_Cube creator = new HEC_Cube();
  
  // creator parametors
  creator.setEdge(100);
  creator.setCenter(0,0,0).setZAxis(1,1,1).setZAngle(PI/4);
  
  // creator.setWidthSegments(4).setHeightSegments(4).setDepthSegments(4);
  
  // add our creator object to our mesh object
  MESH = new HE_Mesh(creator);
  
  // MODIFIER : simple extrusion modifier
  HEM_Extrude extrude = new HEM_Extrude().setDistance(75); // extrude distance
  MESH.modify(extrude); // add our modifier to the mesh
  
  MESH.triangulate(); // mesh triangulation
  
  RENDER = new WB_Render(this);
}


void draw(){
  background(200);
  
  translate(width*0.5, height*0.5);
  rotateX(map(mouseY, 0,height, -PI,PI)*-1);
  rotateY(map(mouseX, 0,width, -PI,PI));
  
  directionalLight(255,255,255,1,1,-1);
  directionalLight(127,127,127,-1,-1,1);
  
  // HeMesh
  // to visualise better what is happening
  // I have actived the edge and disactivated the faces
  
  noStroke();
  fill(255);
  RENDER.drawFaces(MESH); // draw MESH faces
  
  stroke(0,0,255);
  strokeWeight(2);
  RENDER.drawEdges(MESH); // draw MESH edges
}

void keyPressed(){
  if (key == 'e'){
    // HeMesh includes a method for exporting geometry
    // int STL file format which is very handy for 3D printing
    HET_Export.saveToSTL(MESH, sketchPath("meshes"), "test01");
    HET_Export.saveToOBJ(MESH, sketchPath("meshes"), "test02");
  }
  if (key == 's'){
    saveFrame("####.jpg");
  }
}
