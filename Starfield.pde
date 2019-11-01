Particle [] bob = new Particle[100];
void setup()
{
  size(300, 300);
  background(0);
  for (int i=5; i<bob.length; i++)
    bob[i]=new Particle();
  for (int i=0; i<5; i++)
    bob[i] = new OddballParticle();
}
void draw()
{
  background(0);
  for (int i=0; i<bob.length; i++) {
    bob[i].show();
    bob[i].move();
  }
}
class Particle
{
  double x, y, myAngle, mySpeed;
  Particle() {
    x=0;
    y=0;
    mySpeed =(float)(Math.random()*5);
    myAngle =(float)(PI*Math.random()*2);
  }
  void show() {
    pushMatrix();
    translate(150, 150);
    rotate((float)myAngle);
    color(255);
    ellipse((float)x, (float)y, 8, 8);
    popMatrix();
  }
  void move() {
    x=x+(float)(Math.cos(myAngle)*mySpeed);
    y=y+(float)(Math.sin(myAngle)*mySpeed);
    if (x>200) {
      x=0;
      y=0;
    }
  }
}
class OddballParticle extends Particle
{
  void show() {
    pushMatrix();
    translate(150, 150);
    rotate((float)myAngle);
    color(255);
    ellipse((float)x, (float)y, 50, 50);
    popMatrix();
  }
}  

