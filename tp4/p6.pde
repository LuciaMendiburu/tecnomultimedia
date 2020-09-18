void pantalla6() {
  boolean puerta = (mouseX>escX(593))&&(mouseX<escX(774))&&(mouseY>escY(14))&&(mouseY<escY(369)) ;
  image(imagenes[10], 0, 0,escX(800), escY(600));

  if (puerta) {
    image(imagenes[11], 0, 0,escX(800), escY(600));
  }
  image(imagenes[2], 0, 0,escX(800), escY(600));
  textSize(15);
  fill(0);
  text(textos[18], escX(40), escY(490));
  text(textos[19], escX(40), escY(540));
  fill(255);
}

void botones6() {
  botonGeneralMod2(593, 774, 14, 369, 4);
}
