PImage img;
void setup(){  
  size(640, 480);  
  float t=0, mediaT, somaT=0;  
  img = loadImage("einstein.jpg");  
  for(int x=0; x<640; x++){    
    for(int y=0; y<480; y++){
      color cor = img.get(x, y);
      t = red(cor);
      somaT = somaT + t;    
    }  
  }  
  mediaT = somaT/(640*480);    
  println("Media de Tons é ", mediaT);
}
void draw(){  image(img,0,0);}
