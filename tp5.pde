Juego juego;

void setup() {
  size(500, 500);
  juego = new Juego();
  juego.inicializarImagenes();
 
}


void draw() {
  background(200);
  juego.dibujar();
}

void keyPressed() {
  juego.teclaPresionada();
}
