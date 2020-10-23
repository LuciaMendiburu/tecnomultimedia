class Enemigo {
  int posX, posY, dirX, tam;


  Enemigo(int p_posX, int p_posY, int p_dirX, int p_tam) {
    posX = p_posX;
    posY = p_posY;
    dirX = p_dirX;
    tam= p_tam;
  }

  void dibujar() {

     image(juego.imagenes[2], posX, posY, tam, tam);
   

    if (posX < tam/2 || posX > width-tam/2) {
      dirX = dirX * -1;
    }
    posX = posX + dirX ;
  }


  void mover () {

    if (random(0, width)>width/2) {
      dirX = 1;
    } else {
      dirX = -1;
    }
  }
}
