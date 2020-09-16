

void inicializar() {

  inicializarImagenes();
  inicializarFuente();
}


void inicializarImagenes() {
  for (int i=1; i<cantImagenes; i++) {
    imagenes[i] = loadImage("imagen" + i + ".png");
  }
}

void inicializarFuente() {
  fuente1 = loadFont("fuente.vlw");
  textFont(fuente1);
}
