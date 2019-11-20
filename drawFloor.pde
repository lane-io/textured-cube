void drawFloor () {

  int x = 0;
  int y = height/2 + blockSize;

  stroke(0);
  strokeWeight(1);

  while (x < map.width * blockSize) {
    line (x, y, -1000, x, y, 1000);
    x = x + blockSize;
  }

  int z = 0;
  while ( z < map.height * blockSize) {
    line (0, y, z, map.width * blockSize, y, z);
    z = z + blockSize;
  }
  noStroke();
}
