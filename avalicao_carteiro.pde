final int PARADO = 0;
final int DIREITA1 = 1;
final int DIREITA2 = 2;
final int ESQUERDA1 = 3;
final int ESQUERDA2 = 4;

int estadoCarteiro = PARADO;
int estadoCarteiro2 = PARADO;

int casas;

int pontos = 0;

PImage imgPARADO, imgDIREITA1, imgDIREITA2, imgESQUERDA1, imgESQUERDA2;

PImage imgCasas;

PImage imgCheck;

float xCarteiro, yCarteiro;

float x;

boolean entregue = false;
boolean entregue2 = false;
boolean entregue3 = false;
boolean entregue4 = false;
boolean entregue5 = false;
boolean entregue6 = false;
boolean entregue7 = false;
boolean entregue8 = false;
boolean entregue9 = false;

boolean inicio = true;

void setup() {
  size(600, 630);
  frameRate(60);

  imgCasas = loadImage("casas.jpg");
  imgCheck = loadImage("check.png");
  imgPARADO = loadImage("carteiroParado.png");
  imgDIREITA1 = loadImage("esquerda1.png");
  imgDIREITA2 = loadImage("esquerda2.png");
  imgESQUERDA1 = loadImage("direita1.png");
  imgESQUERDA2 = loadImage("direita2.png");

  //Surgimento aleatório do carteiro.
  xCarteiro = random (0, 550);
  yCarteiro = random (0, 500);
}

void draw() {
  mostraCasas();
  mostraCarteiro(estadoCarteiro);
  MEF();
  MEF2();
  colisao();

  //Barra de indicativo de tempo (2minutos).
  if (inicio) {
    x = x + 0.1;
    fill(0);
    
    rect(0, 0, x, 10);
  }

  //Texto para pontuação igual a 0.
  if (x > 600 && pontos == 0) {
    fill(0);
    text("VOCÊ PERDEU", 100, 615);
  } 

  //Texto de indicativo de pontos marcados obedecendo a concordância
  if ( x > 600 && pontos > 1 && pontos <= 8) {
    fill(0);
    textSize(18);
    text("VOCÊ FEZ:  ", 220, 615);
    text(pontos, 315, 615);
    text(" PONTOS", 325, 615);
  }
  if ( x > 600 && pontos == 1) {
    fill(0);
    textSize(18);
    text("VOCÊ FEZ: ", 220, 615);
    text(pontos, 315, 615);
    text(" PONTO", 325, 615);
  }

  //Texto que aparece após concluir as 9 casas
  if ( x < 600 && pontos == 9) {
    x = 0;
    fill(0);
    textSize(20);
    text("PARABÉNS!", 250, 615);
  }
}

//Função para mostrar as casas
void mostraCasas() {
  background(255);
  image(imgCasas, 0, 0, 600, 600);
}

//Função para mostrar o carteiro
void mostraCarteiro(int estado) {
  if (estado == PARADO)
    image(imgPARADO, xCarteiro, yCarteiro, 40, 80);
  if (estado == DIREITA1)
    image(imgDIREITA1, xCarteiro, yCarteiro, 40, 80);
  if (estado == ESQUERDA1)
    image(imgESQUERDA1, xCarteiro, yCarteiro, 40, 80);
  }
  

//Movimentação horizontal do carteiro
void MEF() {
  if (keyPressed) {
    if (keyCode == RIGHT && xCarteiro <= 550) {
      estadoCarteiro = DIREITA1;
      xCarteiro += 10;
    }
  } else {
    estadoCarteiro = PARADO;
  }
  if (keyPressed) {
    if (keyCode == LEFT && xCarteiro >= 20) {
      estadoCarteiro = ESQUERDA1;
      xCarteiro -= 10;
    }
  } else {
    estadoCarteiro = PARADO;
  }
}

//Movimentação vertical do carteiro
void MEF2() {
  if (keyPressed) {
    if (keyCode == DOWN && yCarteiro <= 500) {
      estadoCarteiro = DIREITA1;
      yCarteiro += 10;
    }
  }
  if (keyPressed) {
    if (keyCode == UP && yCarteiro >= 0) {
      estadoCarteiro = ESQUERDA1;
      yCarteiro -= 10;
    }
  }
}

//Função que indica se a encomenda foi entregue.
void colisao() {
  //Parâmetros das colisões  
  if (xCarteiro >=120
    && xCarteiro <= 150
    && yCarteiro >= 90
    && yCarteiro <= 130) {
    entregue = true;
  }    
  if (xCarteiro >= 220
    && xCarteiro <= 250
    && yCarteiro >= 90
    && yCarteiro <= 130) {
    entregue2 = true;
  }
  if (xCarteiro >=530
    && xCarteiro <= 550
    && yCarteiro >= 100
    && yCarteiro <= 130) {
    entregue3 = true;
  }
  if (xCarteiro >=100    
    && xCarteiro <= 120
    && yCarteiro >= 300
    && yCarteiro <= 350) {
    entregue4 = true;
  }
  if (xCarteiro >=340    
    && xCarteiro <= 370
    && yCarteiro >= 300
    && yCarteiro <= 330) {
    entregue5 = true;
  }
  if (xCarteiro >= 520    
    && xCarteiro <= 550
    && yCarteiro >= 300
    && yCarteiro <= 330) {
    entregue6 = true;
  }
  if (xCarteiro >= 20    
    && xCarteiro <= 60
    && yCarteiro >= 450 
    && yCarteiro <= 510) {
    entregue7 = true;
  }
  if (xCarteiro >= 200    
    && xCarteiro <= 250
    && yCarteiro >= 480 
    && yCarteiro <= 510) {
    entregue8 = true;
  }
  if (xCarteiro >= 450    
    && xCarteiro <= 490
    && yCarteiro >= 480 
    && yCarteiro <= 510) {
    entregue9 = true;
  }

  //Condições de aparecimento da imagem de check e incremento de pontuação
  if (entregue == true) {
    pontos = 1;  
    image(imgCheck, 50, 50, 130, 100);
  }
  if (entregue2 == true) {
    pontos++; 
    image(imgCheck, 240, 60, 130, 100);
  }
  if (entregue3 == true) {
    pontos++;  
    image(imgCheck, 450, 60, 130, 100);
  }
  if (entregue4 == true) {
    pontos++;  
    image(imgCheck, 50, 300, 130, 100);
  }
  if (entregue5 == true) {
    pontos++;  
    image(imgCheck, 240, 300, 130, 100);
  }
  if (entregue6 == true) {
    pontos++;  
    image(imgCheck, 450, 300, 130, 100);
  }
  if (entregue7 == true) {
    pontos++;  
    image(imgCheck, 50, 480, 130, 100);
  }
  if (entregue8 == true) {
    pontos++;  
    image(imgCheck, 240, 480, 130, 100);
  }
  if (entregue9 == true) {
    pontos++;  
    image(imgCheck, 450, 480, 130, 100);
  }

  //Observação: Professora eu não consegui fazer o sistema
  //de pontuação funcionar corretamente, a variavél "pontos" 
  //ficava incrementando infinitamente. Porém após a passagem do carteiro
  //pela casa 1, o sistema de pontuação normaliza. Não consegui enxergar 
  // o que tem de errado no código.

  //Mostra os pontos no canto superior esquerdo.
  fill(0, 100, 100);
  textSize(15);
  text(pontos, 25, 30);
  fill(0, 0, 0);
}
