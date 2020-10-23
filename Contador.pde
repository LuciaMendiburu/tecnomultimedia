class Contador {
  int  contador, posX, posY;

  Contador(int p_posX, int p_posY) {
    contador = 0;
    posX = p_posX;
    posY = p_posY;
  }


  void dibujar() {
    textSize(15);
    fill(0);
    text("intentos:" + contador, posX, posY);
  }


  void incrementar() {
    contador++;
  }

  boolean haPerdido() {
    if (contador == 3) {
      return true;
    } else {
      return false;
    }
  }
}
