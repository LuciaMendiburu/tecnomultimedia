class Enemigos {
  int tam;
  int [] posX = new int [9]; 
  int [] posY = new int [9]; 
  int [] dirX = new int [9];

  Enemigos(int p_tam) {
    this.tam = p_tam;
  }

  void definirDireccion() {

    for (int h=1; h < 9; h++) {

      if (random(0, width)>width/2)
        dirX[h] = 1;
      else
        dirX[h] = -1;
    }
  }

  void definirPos() {

    for (int h=1; h < 9; h++) {

      posX[h] = round(random(tam, width-tam));
      posY[h] = h*tam;
    }
  }
  void dibujar() {

    for (int h=1; h < 9; h++) {

      fill(255, 0, 0);
      ellipse(posX[h], posY[h]+25, tam, tam);
    }
  }

  void iniciarMov() {

    for (int h=1; h < 9; h++) {
      if (posX[h] < tam/2 || posX[h] > width-tam/2) {
        dirX[h] = dirX[h] * -1;
      }
      posX[h] = posX[h] + dirX[h];
    }
  }
}
