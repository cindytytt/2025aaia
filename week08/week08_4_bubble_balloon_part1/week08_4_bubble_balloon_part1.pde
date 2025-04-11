//week08_4_bubble_balloon_part1
void setup(){
  size(500, 400);
}
void draw(){
    background(204);
    ellipse(x,y,s,s);
    if(mousePressed) s+= 2;
}
float x= 0, y=0, s=0;
void mousePressed(){
  x = mouseX;
  y = mouseY;
  s=1;
}
