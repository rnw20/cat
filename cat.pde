void setup()
{
  size(500,300);
}

void draw()
{
  background(163, 255, 232);
  if (keyPressed)
  {
    if (keyCode == RIGHT)
    {
      background(35, 63, 84);
      int dot = 0;
      while (dot < 150)
      {
        frameRate(15);
        strokeWeight(2);
        stroke(255);
        point(random(500),random(300));
        dot = dot + 1;
      }
    }
  }
  int c = 0;
  while (c < 300)
  {
    strokeWeight(5);
    stroke(173, 170, 173);
    line(10,10+c,490,10+c);
    c = c + 30;
  }
  stroke(0);
  strokeWeight(1);
  fill(133, 216, 255);
  if (keyPressed)
  {
    if (key == 'c')
    {
      fill(168, 127, 98);
    }
    if (key == 'd')
    {
      fill(43, 166, 224);
    }
    if (key == 'l')
    {
      fill(181, 232, 255);
    }
  }
  if (key != '1')
  {
    rotate(-PI/12.0);
    ellipse(335,220,130,20);  //tail
  }
  rotate(PI/12.0);
  ellipse(150,223,25,75);  //1st leg
  ellipse(195,223,25,75);  //2nd leg
  ellipse(240,223,25,75);  //3rd leg
  ellipse(285,223,25,75);  //4th leg
  ellipse(220,150,200,100);  //body
  if (keyCode != UP)
  {
    triangle(70,70,75,45,85,63);  //left ear
    triangle(110,60,120,45,125,68);  //right ear
    ellipse(100,100,90,80); //head
    stroke(0);
    line(70,100,40,90); //top whisker on left
    line(70,110,40,110); //middle whisker on left
    line(70,120,40,130); //bottom whisker on left
    line(130,100,160,90); //top whisker on right
    line(130,110,160,110); //middle whisker on right
    line(130,120,160,130); //bottom whisker on right
    if (keyCode != DOWN )
    {
      strokeWeight(10);
      point(85,90); //left eye
      point(115,90); //right eye
    }
  }
  if (mousePressed)
  {
    strokeWeight(3);
    stroke(102, 15, 15);
    noFill();
    ellipse(100,120,30,30);
    noFill();
    stroke(0);
    strokeWeight(1);
    ellipse(85,90,20,10);
    ellipse(115,90,20,10);
  }
  if (mouseX <= 120 && mouseX >= 77 && mouseY <= 51 && mouseY >= 31)
  {
    stroke(255, 255, 0);
    strokeWeight(4);
    noFill();
    ellipse(98,40,70,15);
  }
  if (keyPressed)
  {
    if (key == CODED)
    {
      if (keyCode == UP)
        {
          strokeWeight(1);
          fill(133, 216, 255);
          stroke(0);
          triangle(mouseX-30,mouseY-30,mouseX-25,mouseY-55,mouseX-15,mouseY-37);  //left ear
          triangle(mouseX+10,mouseY-40,mouseX+20,mouseY-55,mouseX+25,mouseY-32);  //right ear
          ellipse(mouseX,mouseY,90,80); //head
          line(mouseX-30,mouseY,mouseX-60,mouseY-10); //top whisker on left
          line(mouseX-30,mouseY+10,mouseX-60,mouseY+10); //middle whisker on left
          line(mouseX-30,mouseY+20,mouseX-60,mouseY+30); //bottom whisker on left
          line(mouseX+30,mouseY,mouseX+60,mouseY-10); //top whisker on right
          line(mouseX+30,mouseY+10,mouseX+60,mouseY+10); //middle whisker on right
          line(mouseX+30,mouseY+20,mouseX+60,mouseY+30); //bottom whisker on right
          strokeWeight(10);
          point(mouseX-15,mouseY-10); //left eye
          point(mouseX+15,mouseY-10); //right eye
        }
      if (keyCode == DOWN)
      {
        strokeWeight(2);
        stroke(0);
        line(75,90,95,90);
        line(105,90,125,90);
      }
     }
    if (key == 'a')
    {
      stroke(247, 247, 0);
      strokeWeight(10);
      point(85,90);
      point(115,90);
    }
    if (key == 'b')
    {
      strokeWeight(.5);
      stroke(0);
      fill(130, 135, 209);
      ellipse(200,165,20,20);
      ellipse(150,170,20,20);
      ellipse(270,180,30,20);
      ellipse(290,145,40,40);
      ellipse(160,125,30,30);
      ellipse(215,140,40,20);
    }
    if (key == '1')
    {
      strokeWeight(1);
      stroke(0);
      rotate(-PI/6.0);
      ellipse(mouseX,mouseY,130,20);
    }
  }
}
