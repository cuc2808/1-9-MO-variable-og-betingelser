boolean lightOn = false;
int starX;
int starY;
int starS;
int starSH;
int nrS = 0;

void setup()
{
  size(400,400);
  background(0);
  noStroke();
  background(0);
}


void draw()
{
  if (lightOn == true)
  {
    //Day
    background(255);
    fill(255, 128, 0, 200);
    ellipse(width/2, height/2, 120, 120);
    fill(255, 255, 0, 200);
    ellipse(width/2, height/2, 100, 100);
    fill(255, 255, 0, 255);
    ellipse(width/2, height/2, 80, 80);
  } else if (lightOn == false)
  {
    //Night
    fill(240, 240, 255, 255);
    ellipse(width/2, height/2, 90, 90);
    fill(250, 250, 255, 200);
    ellipse(width/2, height/2, 75, 75);
    fill(255, 255, 255, 255);
    ellipse(width/2, height/2, 60, 60);
    //Stars
    println(nrS);
    nrS = nrS + 1;
    //Så længe at nrS er under 50, så printer vi stjerner.
    if (nrS <= 50)
    {
    starX = (int)random(width);
    starY = (int)random(height);
    starS = (int)random(1,5);
    starSH = (int)random(100,255);
    fill(255, starSH);
    circle(starX, starY, starS);
    
  }
}
}

void keyPressed()
{
  //Light Switch
  if (key == 'c' && lightOn == true)
  {
    //Vi sætter den fra dag til nat, hvis der er tændt lys.
    lightOn = false; background(0);
    //Vi nulstiller nrS, så vi kan printe nye stjerner!
    nrS = nrS - nrS;
  } else if (key == 'c' && lightOn == false)
  {
    //Vi sætter den fra nat til dag, hvis der slukket lys.
    lightOn = true; background(255);
  }
  
    
}
