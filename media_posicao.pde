int[] posX = new int[30];
int[] posY = new int[30];
int cont;

void setup() {
size(300, 300);

}

int funcX(){
  int somaX = 0;
  for(int i=0; i<30; i++)
    somaX = somaX + posX[i];
  return int(somaX/30);
}

int funcY(){
  int somaY = 0;
  for(int i=0; i<30; i++)
    somaY = somaY + posY[i];
  return int(somaY/30);
}

void draw(){
  background(255);
  posX[cont % 30] = mouseX;
  posY[cont % 30] = mouseY;
  fill(0);
  rect(funcX(), funcY(), 10, 10);
  cont++;
}
