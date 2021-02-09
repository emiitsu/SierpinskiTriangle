public void setup()
{
  size(900,900);
  background(0);
  fill(random(155) + 100, random(155) + 100, random(155) + 100);
}
public void draw()
{
  background(0);
  sierpinski(0, 900, 900);
}
int split = 900;
public void sierpinski(int x, int y, int len) 
{
  if(len <= split){
    triangle(x, y, x + len, y, x + len/2, y - len);
  }else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
    sierpinski(x + len/2, y, len/2);
  }
}
public void keyPressed(){
  if(key == 'm' && split > 5){
    split /= 3;
  }
  if(key == 'l' && split < 900){
    split *= 3;
  }
}


// public void mouseDragged()//optional
