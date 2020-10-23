class Jugador {
  int posX, posY, tam;


  Jugador(int p_posX, int p_posY, int p_tam) {  

    posX = p_posX;
    posY = p_posY;
    tam= p_tam;
  }

  void dibujar() {

    
    image(juego.imagenes[5], posX, posY, tam, tam);
    
  }



  void teclaPresionada() {

    if (keyCode == UP) {

      if (posY>tam/2) {
        posY = posY - tam/2;
      }
    } else if (keyCode == DOWN) {

      if (posY<height - tam/2) {
        posY = posY + tam/2;
      }
    } else if (keyCode == LEFT) {

      if (posX> tam/2) {
        posX = posX - tam/2;
      }
    } else if (keyCode == RIGHT) {

      if (posX< width - tam/2 ) {
        posX = posX + tam/2 ;
      }
    }
  }



  boolean haGanado() {
    if (posY <= tam*2) {
      return true;
    } else {
      return false;
    }
  }
}
