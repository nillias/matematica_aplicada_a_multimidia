PImage imgOriginal;
PImage imgDestino = createImage(320, 240, HSB);

void setup() {
    size(640, 240);
    colorMode(HSB, 360, 100, 100);
    imgOriginal = loadImage("original.png");
    processaImagem();
    image(imgOriginal, 0, 0);
    image(imgDestino, 320, 0);
}

void processaImagem() {
    color corOriginal, corDestino;
    float b;
    for (int x = 0; x < imgOriginal.width; x++) {
        for (int y = 0; y < imgOriginal.height; y++) { 
            corOriginal = imgOriginal.get(x, y);
   
 b = brightness(corOriginal);
            corDestino = color(0, 0, b);
            imgDestino.set(x, y, corDestino);
        }
    }
}
