PImage qblock;
float rotx = PI/4, roty = PI/4;

void setup () {
  size (500, 500, P3D);
  qblock = loadImage ("ugh.png");
  textureMode (NORMAL);
}

void draw () {
  background (255);

  pushMatrix ();
  translate (width/2, height/2);
  rotateX (rotx);
  rotateY (roty);
  scale (100);

  noStroke();
  texturedBox(qblock);

  popMatrix ();
}

void texturedBox(PImage tex) {

  beginShape(QUADS);

  texture (tex);

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
  vertex ( 1, -1, -1, 1, 0);
  vertex ( 1, 1, -1, 1, 1);
  vertex (1, 1, -1, 0, 1);

  // X left face
  vertex (-1, -1, -1, 0, 0);
  vertex ( -1, -1, 1, 1, 0);
  vertex ( -1, 1, 1, 1, 1);
  vertex (-1, 1, -1, 0, 1);

  // Y top face
  vertex (-1, -1, -1, 0, 0);
  vertex ( 1, -1, -1, 1, 0);
  vertex ( 1, -1, 1, 1, 1);
  vertex (-1, -1, 1, 0, 1);

  // Y bottom face
  vertex (-1, 1, 1, 0, 0);
  vertex ( 1, 1, 1, 1, 0);
  vertex ( 1, 1, -1, 1, 1);
  vertex (-1, 1, -1, 0, 1);


  endShape();
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY) * 0.01;
  roty = roty + (pmouseX - mouseX) * 0.01;
}
