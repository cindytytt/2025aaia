///week17-2_zongzi_part2
PImage zongzi;
void setup(){
  size(500, 500);
  zongzi = loadImage("zongzi.png");  
}
float x,y;
void draw(){
  background(204);
  imageMode(CENTER);
  if(x>0){
  //image(zongzi,0,0,100,100);
  image(zongzi, x,y,100,100);
  y++;
  }
}
void mousePressed(){
  x = mouseX;
  y = mouseY;
}
