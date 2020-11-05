//your code here
double xX, yY, angle, speed;
int myColor;
Particle[] Wilbert;
void setup()
{
  //your code here
  size(1000,1000);
  background(0);
  Wilbert = new Particle [500];
  for(int i= 0; i<Wilbert.length; i++)
  {
  if(i<=10){
   Wilbert[i]= new OddballParticle(); 
  }
  else if(i>10){
   Wilbert[i]= new Particle(); 
  }
  }
  }
  void  mouseReleased(){
    Wilbert = new Particle [500];
  for(int i= 0; i<Wilbert.length; i++)
  {
  if(i<=10){
   Wilbert[i]= new OddballParticle(); 
  }
  else if(i>10){
   Wilbert[i]= new Particle(); 
  }
  }
  }
void draw()
{
  //your code here
  background(0);
  
  for(int i = 0; i<Wilbert.length; i++){
    Wilbert[i].move();
    Wilbert[i].show();
  }
}
class Particle
{
  //your code here
  double xX, yY, angle, speed;
  int myColor;
  Particle()
  {
    xX=500;
    yY=500;
    angle=Math.random()*2*Math.PI;
    speed=Math.random()*2;
    myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
void move()
  {
  xX=xX+Math.cos(angle)*speed;
  yY=yY+Math.sin(angle)*speed;
  }
void show()
{
  fill(myColor);
 ellipse((float)xX, (float)yY, 10, 10); 
}
}
class OddballParticle extends Particle
{
  int xX, yY, myColor;
  OddballParticle()
  {
  myColor=color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
  xX=500;
  yY=500;
 
  
  }
  void move()
  {
   xX=xX+(int)((Math.random()*6)-3); 
   yY=yY+(int)((Math.random()*6)-3);
  }
  void show()
  {
   fill(myColor);
   ellipse(xX, yY, 30, 30);
  }
  
}
