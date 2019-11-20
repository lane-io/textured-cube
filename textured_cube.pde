boolean up, down, left, right;

int blockSize = 100;

float lx = 2500, ly = height/2 - blockSize/2, lz = 2500;
PVector direction = new PVector (0, -1);
float headAngle = 0;

PVector strafeDir = new PVector (0, -1);

color black = #000000;
color white = #FFFFFF;

PImage qblock, dirttop, dirtside, dirtbottom;
float rotx = PI/4, roty = PI/4;

PImage map;

void setup () {
  size (500, 500, P3D);
  dirttop = loadImage ("dirttop.png");
  dirtside = loadImage ("dirtside.png");
  dirtbottom = loadImage ("dirtbottom.png");
  map = loadImage ("map.png");

  textureMode (NORMAL);
}

void draw () {
  background (255);


  //camera (location, direction, tilt);
  camera (lx, ly, lz, direction.x + lx, ly + 0, direction.y + lz - 1, 0, -1, 0);
  direction.rotate (headAngle);
  headAngle = -(pmouseX - mouseX) * 0.01;

  strafeDir = direction.copy();
  strafeDir.rotate (PI/2);

  if (up) {
    lx = lx + direction.x;
    lz = lz + direction.y;
  }
  if (down) {
    lz  = lz + 10;
  }

  if (left) {
    lx = lx - strafeDir.x;
    lz = lz - strafeDir.y;
  }

  if (right) {
    lx = lx - strafeDir.x;
    lz = lz - strafeDir.y;
  }

  pushMatrix ();
  rotateX (rotx);
  rotateY (roty);

  drawMap();
  //drawFloor();

  //for (int x = -1000; x < 1000; x += 100) {
  //  for (int z = -1000; z < 1000; z += 100) {

  //    noStroke();
  //  }
  //}

  popMatrix ();
}
