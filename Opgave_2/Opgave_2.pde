


void setup()
{
  size(400,400);
  background(255);
  stroke(10);
  rectMode(CENTER);
}

void draw()
{
  stroke(0);
  strokeWeight(5);
}


void keyPressed()
{
  if (key == 'c'){
    fill(255);
    circle(mouseX, mouseY, 50);
  } else if (key == 's'){
    fill(255);
    square(mouseX, mouseY, 50);
  } else if (key == 'l'){
    fill(255);
    line(mouseX, mouseY + 25, mouseX, mouseY - 25);
  } else if (key == 't'){
    fill(255);
    triangle(mouseX, mouseY - 25, mouseX + 25, mouseY + 25, mouseX -25, mouseY + 25);
  } else if (key == 'r'){
    fill(255);
    rect(mouseX, mouseY, 62.5, 40 );
  } else if (key == 'e'){
    fill(255);
    ellipse(mouseX, mouseY, 62.5, 40);
  }
}
