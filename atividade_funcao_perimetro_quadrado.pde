void setup() {
    size(256, 256);
    int perimetro, area;
    for (int largura = 1; largura < 10; largura++) { 
        println("Largura: ", largura);
        int altura = 10 - largura;
        println("Altura: ", altura);
        perimetro = 2 * largura + 2 * altura; 
        println("Perimetro: ", perimetro);
        area = largura * altura; 
        println("Area: ", area);
        println("");
     }
}
