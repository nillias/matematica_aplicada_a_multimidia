void setup() {
  size(600, 600);
  noStroke();
}

void draw() {
  circle(300, 300, 400);
  float distancia = dist(300, 300, mouseX, mouseY);
  //println(distancia);
  if (distancia < 200)
    println("está dentro");
  else
    println("esta fora");

  //if (mouseX < 200)
  //  println("Cursor está à esquerda");
  //else if (mouseX > 400)
  //  println("Cursor não está a direita");
  //else
  //  println("Cursor está dentro");
}
