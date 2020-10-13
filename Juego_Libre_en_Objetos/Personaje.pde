class Personaje {
  int posX, posY, tam;
  
  Personaje(int p_posX, int p_posY, int p_tam) {
    this.posX = p_posX;
    this.posY = p_posY;
    this.tam = p_tam;
  }
  void dibujar() {
    noStroke();
    ellipse(this.posX, this.posY, this.tam, this.tam);
  }
  void moverArriba(){
    this.posY = this.posY - 50;
    
  }
  void moverAbajo(){
    this.posY = this.posY + 50;
    
  }
  void moverIzquierda(){
    this.posX = this.posX - 25;
    
  }
  void moverDerecha(){
     this.posX = this.posX + 25;
    
  }
}
