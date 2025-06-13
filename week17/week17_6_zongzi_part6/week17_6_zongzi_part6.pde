//week17_6_zongzi_part6
PImage zongzi,fish,fish2;
void setup(){
  size(500,500);
  zongzi = loadImage("zongzi.png");
  fish = loadImage("fish.png");
  fish2 = loadImage("fish2.png");
}
float fishX = 250, fishY = 250;
float [] x = new float[100];
float [] y = new float[100];
int N = 0;
void draw(){
  background(204);
  imageMode(CENTER);
  for(int i=0; i<N;i++){
    if(x[i]>0){
      image(zongzi,x[i],y[i],100,100);
      y[i]++;
      if(y[i]>500){
        for(int k = i+1;k<N;k++ ){
        x[k-1] = x[k];
        y[k-1] = y[k];
      }
      N--;
     }
    }
   }
   int nearsetZongzi = -1;
   float nearsetZongziDist = 9999999;
   for(int i=0;i<N;i++){
     if(dist(fishX,fishY,x[i],y[i])<nearsetZongziDist){
       nearsetZongziDist = dist(fishX,fishY,x[i],y[i]);
       nearsetZongzi = i;
     }
   }
   if(nearsetZongzi > -1){
     float dx = x[nearsetZongzi] - fishX,dy = y[nearsetZongzi] - fishY;
     fishX += dx/20;
     fishY += dy/20;
     if(abs(dx)<50 && abs(dy)<50){
       for(int k=nearsetZongzi+1;k<N;k++){
         x[k-1] = x[k];
         y[k-1] = y[k];
       }
       N--;
     }
   }
   if(mouseX>fishX) image(fish, fishX, fishY, 152, 104); 
   else image(fish2, fishX, fishY, 152, 104); 
}
void mousePressed(){
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
