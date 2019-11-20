void drawMap() {

  int mapX = 0, mapY = 0;
  int worldX = 0, worldY = height/2, worldZ = 0;

  while (mapY < map.height) {

    color pixel = map.get (mapX, mapY);

    worldX = mapX * blockSize;
    worldZ = mapY * blockSize;

    if (pixel == black) {
      texturedBox (dirttop, dirtside, dirtbottom, worldX, worldY, worldZ, blockSize/2);
    }

    mapX++;
    if (mapX > map.width) {
      mapX = 0;
      mapY++;
    }
  }
}
