void setup() {
  size(200,200);
  for (int i=0; i<10; i++){
    for (int j=0; j<10; j++) {
      circle (100 - i * 10 + j * 10, 5   + i * 10 + j * 10, 10);
      
    }
  }
}
