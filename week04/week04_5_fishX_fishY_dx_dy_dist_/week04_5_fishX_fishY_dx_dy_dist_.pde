//week04_5_fishX_fishY_dx_dy_dist_
void setup(){
  size(600, 400);
}
float x,y;
float fishX = 300, fishY = 200;
void draw(){
  background( #C0FFEE ); 
  if(x>0){
  ellipse(x, y, 8, 8);
  y += 2;
  float dx = x - fishX, dy =y -fishY;
  float d = dist(x, y, fishX, fishY);
  fishX += dx / d * 4;
  fishY += dy / d * 4;
  if(y>400) x = 0;  
  }
  ellipse(fishX, fishY, 28,18);
}
void mousePressed(){
  x = mouseX;
  y = mouseY;
}
