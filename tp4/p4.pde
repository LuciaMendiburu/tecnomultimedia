void pantalla4() {

  image(imagenes[9], 0, 0,escX(800), escY(600));
  image(imagenes[2], 0, 0,escX(800), escY(600));
  textSize(15);
  fill(0);
  text(textos[14], escX(40), escY(490));
  text(textos[15], escX(40), escY(540));
  fill(255);
  rect(escX(650), escY(530), escX(100), escY(30));

  interaccionPant4y5(1, 670);
}

void botones4() {
  botonGeneralMod2(650, 750, 530, 560, 5);
}
