void mouseDragged() {
  //headAngle = headAngle + (pmouseX - mouseX) * 0.01;
  
  //rotx = rotx + (pmouseY - mouseY) * 0.01;
  //roty = roty + (pmouseX - mouseX) * -0.01;
}

void keyPressed() {
  if (keyCode == UP) up = true;
  if (keyCode == LEFT) left = true;
  if (keyCode == RIGHT) right = true;
  if (keyCode == DOWN) down = true;
}

void keyReleased() {
    if (keyCode == UP) up = false;
  if (keyCode == LEFT) left = false;
  if (keyCode == RIGHT) right = false;
  if (keyCode == DOWN) down = false;
}
