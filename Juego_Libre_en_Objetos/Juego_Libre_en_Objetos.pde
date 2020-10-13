Personaje personaje;
Enemigos enemigos;
void setup() {
  size(500, 500);
  personaje = new Personaje(250, 475, 50);
  enemigos = new Enemigos(50);
  enemigos.definirDireccion();
  enemigos.definirPos();
}
void draw() {
  background(200);
  personaje.dibujar();
  enemigos.dibujar();
  enemigos.iniciarMov();
  
  
}

void keyPressed(){
  
  if (keyCode == UP) {
         this.personaje.moverArriba();
     } else if (keyCode == DOWN) {
 this.personaje.moverAbajo();
  } else if (keyCode == LEFT) {
    this.personaje.moverIzquierda();   
      } else if (keyCode == RIGHT) {
this.personaje.moverDerecha();
       
  }
  
  
  
  
  
  
  
}
