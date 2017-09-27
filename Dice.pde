PFont myFont;
void setup()
{
  noLoop();
  size(400,400);
  
}

void draw()
{
  int sum = 0;
  background(0);
  for (int y = 10; y <= 300; y+= 58)
  {
    for (int x = 20; x <= 400; x+= 55)
    {
      Die lol = new Die(x,y);
      lol.show();
      lol.roll();
      sum = sum + lol.num;
    }
  }
  fill(240,230,210);
  
  //set font yaaaaaaas
  myFont = loadFont("BerlinSansFBDemi-Bold-48.vlw");
  textFont(myFont);
  text("Score: " + sum , 100,380);
}
  
void mousePressed()
{
  redraw();
}

class Die //models one single dice cube
{
  int myX, myY, num;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
   
  }
  
  void roll()
  {
    num = (int)((Math.random()*6)+1);
  }

  void show()
  {
    
    //front
   fill(230,230,230);
   rect(myX,myY,40,40,3);
    //right side
    fill(202,203,209);
    quad(myX, myY, myX-10, myY-3, myX-10, myY+36, myX, myY+40);
    //top
    fill(210,210,210);
    quad(myX, myY+1, myX-15, myY-2, myX+30, myY-2, myX+42, myY+1);
    
    fill((int)(Math.random()*200)+100, (int)(Math.random()*200)+100,(int)(Math.random()*200)+100);
    
    
    if (num == 1) {
      ellipse (myX+20,myY+20,5,5);
    }
    if (num == 2) {
      ellipse (myX+20,myY+15,5,5);
      ellipse (myX+20,myY+28,5,5);
    }
    if (num == 3) {
      ellipse (myX+10,myY+10,5,5);
      ellipse (myX+20,myY+20,5,5);
      ellipse (myX+30,myY+30,5,5);
    }
    if (num == 4) {
      ellipse (myX+10,myY+10,5,5);
      ellipse (myX+30,myY+10,5,5);
      ellipse (myX+10,myY+30,5,5);
      ellipse (myX+30,myY+30,5,5);
    }
     if (num == 5) {
     ellipse (myX+10,myY+10,5,5);
      ellipse (myX+30,myY+10,5,5);
      ellipse (myX+10,myY+30,5,5);
      ellipse (myX+30,myY+30,5,5);
      ellipse(myX+20,myY+20,5,5);
    }
     if (num == 6) {
      ellipse (myX+10,myY+10,5,5);
      ellipse (myX+10,myY+20,5,5);
      ellipse (myX+10,myY+30,5,5);
      ellipse (myX+30,myY+10,5,5);
      ellipse (myX+30,myY+20,5,5);
      ellipse (myX+30,myY+30,5,5);
     }
    
  }
}