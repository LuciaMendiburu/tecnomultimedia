void pantalla0() {
  boolean rectSup = (mouseX>escX(295))&&(mouseX<escX(530))&&(mouseY>escY(380))&&(mouseY<escY(410));
  boolean rectInf = (mouseX>escX(295))&&(mouseX<escX(530))&&(mouseY>escY(430))&&(mouseY<escY(460));

  textSize(30);
  image(imagenes[5], 0, 0, escX(800), escY(600));
  strokeWeight(3);
  fill(255);
  rect(escX(295), escY(380), escX( 235), escY(30));
  rect(escX(295), escY(430), escX(235), escY(30));

  if ( rectSup ) {
    fill(253, 190, 20);
  } else {
    fill(0);
  }
  text(textos[0], escX(370), escY(405));

  if ( rectInf ) {
    fill(253, 190, 20);
  } else {
    fill(0);
  }
  text(textos[1], escX(360), escY(455));
}



void botones0() {

  boolean rectSup = (mouseX>escX(295))&&(mouseX<escX(530))&&(mouseY>escY(380))&&(mouseY<escY(410));
  boolean rectInf = (mouseX>escX(295))&&(mouseX<escX(530))&&(mouseY>escY(430))&&(mouseY<escY(460));
  if ( rectSup ) {
    pantalla=1;
  } else if ( rectInf ) {
    pantalla = 5;
  }
}
