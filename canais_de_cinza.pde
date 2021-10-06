PImage imgOriginal;
PImage imgDestinoR = createImage(320, 240, RGB);
PImage imgDestinoG = createImage(320, 240, RGB);
PImage imgDestinoB = createImage(320, 240, RGB);

void setup(){
  size(1280, 240); 
  imgOriginal = loadImage("original.png");
  processaImagem();
  image(imgOriginal, 0, 0);
  image(imgDestinoR, 320, 0);
  image(imgDestinoG, 640, 0);
  image(imgDestinoB, 960, 0);
}

void processaImagem() {
  color corOriginal, corDestino;
  float r;
  float g;
  float b;
  for (int x = 0; x < 320; x++) {
    for (int y = 0; y < 240; y++) {
      corOriginal = imgOriginal.get(x, y);
      r = red(corOriginal);
      corDestino = color(r, r, r);
      imgDestinoR.set(x, y, corDestino);
      
      corOriginal = imgOriginal.get(x, y);
      g = green(corOriginal);
      corDestino = color(g, g, g);
      imgDestinoG.set(x, y, corDestino);
      
      corOriginal = imgOriginal.get(x, y);
      b = blue(corOriginal);
      corDestino = color(b, b, b);
      imgDestinoB.set(x, y, corDestino);
      
   
      
    }
  }
}
