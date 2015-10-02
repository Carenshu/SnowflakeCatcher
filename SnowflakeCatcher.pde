Snowflake[] snow; 
void setup()
{
  //your code here
  background(131,132,135);
  
  size (500,500);

  snow =new Snowflake[100];

  for (int i=0; i<snow.length; i++)
  {
    snow [i]= new Snowflake(); 
  }
}
void draw()
{
  //your code here
   //background(131,132,135);
  for (int i =0; i<snow.length; i++)
  {
  snow[i].erase();
  snow[i].lookDown();
  snow[i].move();
  snow[i].wrap();
  snow[i].show();
}
}
void mouseDragged()
{
  //your code here
if (mouseX>250)
{
  fill(235,241,255);
  ellipse(mouseX, mouseY, 25, 25);
}else  {
 fill(165,210,204);
  ellipse(mouseX, mouseY, 25, 25);
  
}
 
}

class Snowflake
{
   boolean isMoving;
   int x, y;

  //class member variable declarations
  Snowflake()
  {
    //class member variable initializations
    x=(int)(Math.random ()*500);
    y= (int)(Math.random ()*500);
    isMoving=true;

  }
  void show()
  {
    //your code here
    noStroke();
    fill(235,241,255);
    ellipse (x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if (y<500&&y>0&& get(x-1,y-1)!=color(131,132,135))
    {
      isMoving= false;
    } else 
     {
       isMoving=true;  
    }
  }

  void erase()
  {
    //your code here
  // fill(0);
   fill(131,132,135);
    ellipse(x, y, 7, 7);
  }
  void move()
  {
    //your code here
    if (isMoving==true)
    {
      y++;
    }
  }
  void wrap()
  {
    //your code here
    if (y> 500)
    {
      y=0;
      x=(int)(Math.random ()*500);
    }
  }
}






