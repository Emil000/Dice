
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
  text("Score: " + sum , 150,370);
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
  }
  
  void roll()
  {
    num = (int)((Math.random()*6)+1);
  }

  void show()
  {
    fill(255);
    //front
    rect(myX,myY,40,40,3);
    //right side
    quad(myX, myY, myX-10, myY-2, myX-10, myY+35, myX, myY+39);
    //top
    quad(myX, myY, myX-15, myY-3, myX+30, myY-3, myX+42, myY);
    
    //fill((int)(Math.random()*200)+100, (int)(Math.random()*200)+100,(int)(Math.random()*200)+100);
    
    fill(200,0,0);
    
    if (num == 1) {
      ellipse (myX+10,myX+20,5,5);
    }
    else if (num == 2) {
      ellipse (myX+10,myX+20,5,5);
      ellipse (myX+10,myX+28,5,5);
    }
    else if (num == 3) {
      ellipse (myX+,myX,5,5);
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
    }
    else if (num == 4) {
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
    }
    else if (num == 5) {
      ellipse (myX+5,myX,5,5);
      ellipse (myX+15,myX,5,5);
      ellipse (myX+20,myX,5,5);
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
    }
    else if (num == 6) {
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
      ellipse (myX,myX,5,5);
    }
    
 
    
  }
}