void pantalla5() {

  image(imagenes[12], 0, 0,escX(800), escY(600));

  textSize(20);
  fill(0);
  text(textos[16], escX(250), escY(posY));

  if (posY<= escY(600)) {
     posY --;
  } else if (posY== -50) {
    posY = -50;
  }

  strokeWeight(3);
  fill(255);
  rect(escX(640), escY(530), escX(100), escY(30));

  interaccionPant4y5(17, 675);
}

void botones5() {
  botonGeneralMod2(650, 750, 530, 560, 0);
}
