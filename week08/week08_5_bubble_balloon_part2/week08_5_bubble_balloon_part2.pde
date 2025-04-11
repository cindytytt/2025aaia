//week08_5_bubble_balloon_part2
void setup(){
  size(500, 400);
}
void draw(){
    background(204);
    ellipse(x,y-s/2,s*0.75,s);
    if(mousePressed) s+= 2;
    if(mousePressed==false && y>s) y--;
}
float x= 0, y=0, s=0;
void mousePressed(){
  x = mouseX;
  y = mouseY;
  s=1;
}
