Snowflake[] snow; 
void setup()
{
  //your code here
  size (500,500);

  snow =new Snowflake[50];

  for (int i=0; i<snow.length; i++)
  {
    snow [i]= new Snowflake(); 
  }
}
void draw()
{
  //your code here
  background(155);
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
    fill(255);
    ellipse (x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if (y<500&&y>0&& get(x-1,y-1)!=color(0))
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
    fill(0);
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


