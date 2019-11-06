PImage qblock, dirttop, dirtside, dirtbottom;
float rotx = PI/4, roty = PI/4;

void setup () {
  size (500, 500, P3D);
  dirttop = loadImage ("dirttop.png");
  dirtside = loadImage ("dirtside.png");
  dirtbottom = loadImage ("dirtbottom.png");
  textureMode (NORMAL);
}

void draw () {
  background (0);

  pushMatrix ();
  rotateX (rotx);
  rotateY (roty);

  for (int x = -1000; x < 1000; x += 100) {
    for (int z = -1000; z < 1000; z += 100) {

      noStroke();
      texturedBox(dirttop, dirtside, dirtbottom, x, height/2+200, z, 50);
    }
  }

  popMatrix ();
}

void texturedBox(PImage top, PImage side, PImage bottom, float x, float y, float z, float size) {

  pushMatrix();
  
  translate (x, y ,z);
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

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY) * 0.01;
  roty = roty + (pmouseX - mouseX) * -0.01;
}
