void setup(){
  size(400, 400);
  background(255);
}


void draw(){
  if (mouseX <= width/2)
  {
    background(255);
  } else if (mouseX >= width/2)
  {
    background (0);
  }
}
