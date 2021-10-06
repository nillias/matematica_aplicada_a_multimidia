PImage imgGrama; 
PImage imgTijolo;

int[][] mapa = { 
  {1, 0, 0, 0, 1}, 
  {1, 2, 2, 2, 1}, 
  {1, 3, 1, 3, 1}, 
  {1, 3, 3, 3, 1}, 
  {1, 1, 1, 1, 1}, 
  
};

void setup(){
  size (500, 520);
  imgGrama = loadImage("Grass Block.png");
  imgTijolo = loadImage("Stone Block.png");
  mostraMapa();
}

void mostraMapa() {  
  for (int i=0; i<5; i++)
    for (int j=0; j<5; j++)
      switch(mapa[j][i]) {
      case 0: 
        image(imgGrama, i*100, j*90);
        break;
      case 1: 
        image(imgGrama, i*100, j*80);
        break;
      case 2: 
        image(imgTijolo, i*100, j*60);
        break;
      case 3: 
        image(imgTijolo, i*100, j*70);
        break;
     
      }
}
