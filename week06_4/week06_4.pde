//week06_4
void setup(){
  size(600, 400);
}
float[]x = new float[100];
float[]y = new float[100];
int N=0;
void draw(){
  background( #C0FFEE ); 
  for(int i=0; i<N; i++){
    ellipse(x[i], y[i], 8, 8);
    y[i] +=2;
    if(y[i]>400){//飼料掉到外面要回收
      for(int k=i; k<N-1; k++){
        x[k] = x[k+1];
        y[k] = y[k+1];
    }
    N--;
  }
  println(N);
}
}
void mousePressed(){
  x[N]= mouseX;
  y[N]= mouseY;
  N++;//增加一個飼料
}
