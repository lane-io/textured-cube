void texturedBox(PImage top, PImage side, PImage bottom, float x, float y, float z, float size) {

  noStroke();
  
  pushMatrix();

  translate (x, y, z);
  scale (size);

  beginShape(QUADS);

  texture (side);

  // Z front face
  vertex (-1, -1, 1, 0, 0);
  vertex ( 1, -1, 1, 1, 0);
  vertex ( 1, 1, 1, 1, 1);
  vertex (-1, 1, 1, 0, 1);

  // Z back face
  vertex (-1, -1, -1, 0, 0);
  vertex ( 1, -1, -1, 1, 0);
  vertex ( 1, 1, -1, 1, 1);
  vertex (-1, 1, -1, 0, 1);

  // X right face
  vertex (1, -1, 1, 0, 0);
  vertex (1, -1, -1, 1, 0);
  vertex (1, 1, -1, 1, 1);
  vertex (1, 1, 1, 0, 1);

  // X left face
  vertex (-1, -1, -1, 0, 0);
  vertex ( -1, -1, 1, 1, 0);
  vertex ( -1, 1, 1, 1, 1);
  vertex (-1, 1, -1, 0, 1);

  endShape();

  beginShape(QUADS);

  texture (top);

  // Y top face
  vertex (-1, -1, -1, 0, 0);
  vertex ( 1, -1, -1, 1, 0);
  vertex ( 1, -1, 1, 1, 1);
  vertex (-1, -1, 1, 0, 1);

  endShape();

  beginShape(QUADS);

  texture (bottom);

  // Y bottom face
  vertex (-1, 1, 1, 0, 0);
  vertex ( 1, 1, 1, 1, 0);
  vertex ( 1, 1, -1, 1, 1);
  vertex (-1, 1, -1, 0, 1);

  endShape();

  popMatrix();
}
