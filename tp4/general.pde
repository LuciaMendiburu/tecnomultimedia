

void inicializar() {

  inicializarImagenes();
  inicializarFuente();
  inicializarTextos();
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

void inicializarTextos() {

  textos[0]="Iniciar" ;
  textos[1]= "Créditos";
  textos[2]= "¡El emperador ha recibido visitas! son dos hombres que presentan unas telas que tienen la milagrosa virtud\nde ser invisibles a toda persona que no fuera apta para su cargo o que fuera irremediablemente estúpida" ;
  textos[3]= "¿Qué debe hacer?";
  textos[4]= "¿Y cómo se yo que no me\n están mintiendo? exijo\n pruebas";
  textos[5]= "A)";
  textos[6]= "¡Deben ser vestidos magníficos!\n quiero esas telas";
  textos[7]= "B)";
  textos[8]= "Así fue que la compra fue realizada, y mandaron a hacer las telas cuanto antes. A medida que el tiempo\npasaba, y mientas los dos hombres fingían tejer (porque en realidad nada hacían), el emperador quería\nasegurarse de que ellos estén haciendo bien su trabajo, de esta manera decidió comprobarlo";
  textos[9]= "¿Debería ir él, o un empleado de confianza?";
  textos[10]= "Fue así que aquellos truhanes le dieron un discurso extremadamente falso, pero lleno de halagos al\nemperador y de los supuestos beneficios económicos que tendría el pueblo. Al terminar, se quedaron\nesperando una respuesta del emperador, para ver si habían logrado persuadirlo, o no";
  textos[11]= "¿Tendría que creerles o pensar que es mentira?";
  textos[12]= "Sus palabras son solo mentiras,\nustedes son dos estafadores,\nexijo que se retiren\ninmediatamente" ;
  textos[13]= "Sus palabras me parecen\ngenuinas y sinceras, además,\nsiemprequiero lo mejor para\nmi reino";
  textos[14]= "Así fue que los dos estafadores se fueron y nunca más regresaron";
  textos[15]= "Fin";
  textos[16]= "EL VESTIDO NUEVO DEL EMPERADOR\n\n\n                Tecno Multimedia 1\n\n                      Comisión 4\n\n                 Lucia Mendiburu\n\n" ;
  textos[17]= "Inicio";
  textos[18]= "Al entrar a este lugar, el emperador encontró a los dos hombres guardándose los hilos caros que pedían\npara tejer las telas. De esta manera, el emperador entendió que todo era una mentira para sacarle su\ndinero";
  textos[19]= "¡Recorre la imagen para avanzar!";
  textos[20]= "El empleado se dirigió al lugar donde los hombres estaban trabajando, pero al ver los telares vacios,\nse sintió decepcionado, por no creerse suficiente para el cargo en el que trabajaba";
  textos[21]= "¿Qué debe hacer?";
  textos[22]= "¡Tengo que decirle al emperador\nla verdad de lo que ví";
  textos[23]= "No, desde luego no\npuedo decir que no\nhe visto la tela,\nperdería mi trabajo";
  textos[24]= "Como la soberbia pudo al emperador, dijo que él si había podido verlas, y que su empleado no merecía el\npuesto que tenía, por lo tanto, lo despidió. De esta manera, el emperador salió con ropa interior a dar su\npróximo discurso, “con sus nuevas prendas” quedando como un iluso frente a un pueblo que se reía en su cara";
  textos[25]= "Fin            (¡Recorre la imagen para avanzar!)";
  textos[26]= " ´´Son las telas mas hermosas que he visto´´ dijo el empleado. De esta manera, creyendo en sus palabras, el\nemperador salió con ropa interior a dar su próximo discurso, “con sus nuevas prendas” quedando como un\niluso frente a un pueblo que se reía en su cara";
  textos[27]= "Fin            (¡Recorre la imagen para avanzar!)";
  textos[28]= "\n";
}


void pantallaGeneralMod1(int numImg1, int numImg2, int numText1, int numText2, int numImg3, int numText3, int numText4, int numImg4, int numText5, int numText6, int posX1, int posY1, int posX2, int posY2, int posX3, int posY3) {
  //abarca modelo de pantallas 1, 2, 3 y 7

  boolean rectA = (mouseX>escX(450))&&(mouseX<escX(550))&&(mouseY>escY(530))&&(mouseY<escY(560));
  boolean rectB = (mouseX>escX(650))&&(mouseX<escX(750))&&(mouseY>escY(530))&&(mouseY<escY(560));

  image(imagenes[numImg1], 0, 0 ,escX(800), escY(600));
  image(imagenes[numImg2], 0, 0,escX(800), escY(600));
  textSize(15);
  fill(0);
  text(textos[numText1], escX(40), escY(490));
  text(textos[numText2], escX(posX1), escY(posY1));
  fill(255);
  rect(escX(450), escY(530), escX(100), escY(30));
  rect(escX(650), escY(530), escX(100), escY(30));

  if ( rectA) {
    fill(253, 190, 20);
    image(imagenes[numImg3], 0, 0,escX(800), escY(600));
    text(textos[numText3], escX(posX2), escY(posY2));
  } else {
    fill(0);
  }
  text(textos[numText4], escX(495), escY(550));

  if ( rectB ) {
    fill(253, 190, 20);
    image(imagenes[numImg4], 0, 0,escX(800), escY(600));
    text(textos[ numText5], escX(posX3), escY(posY3));
  } else {
    fill(0);
  }
  text(textos[numText6], escX(690), escY(550));
}



void  pantallaGeneralMod2(int numImg1, int numImg2, int numtext1, int numtext2, int numImg3, int numImg4) {
  //abarca modelo de pantallas 8 y 9


  boolean aplausos = (  (mouseX>escX(440))&&(mouseX<escX(617))&&(mouseY>escY(389))&&(mouseY<escY(458)) || (mouseX>escX(615))&&(mouseX<escX(718))&&(mouseY>escY(201))&&(mouseY<escY(462)) || (dist(mouseX, mouseY, 529, 355)<40) ||   (dist(mouseX, mouseY, 675, 157)<40) );     


  image(imagenes[numImg1], 0, 0,escX(800), escY(600));



  image(imagenes[numImg2], 0, 0,escX(800), escY(600));
  textSize(15);
  fill(0);
  text(textos[numtext1], escX(25), escY(490));
  text(textos[numtext2], escX(250), escY(550));

  if ( aplausos) {
    image(imagenes[numImg3], 0, 0,escX(800), escY(600));
    image(imagenes[numImg4], escX(65), 0,escX(800), escY(600));
  }
}


void botonGeneralMod1(int pant1, int pant2) {

  if ( (mouseX>escX(450))&&(mouseX<escX(550))&&(mouseY>escY(530))&&(mouseY<escY(560))) {
    pantalla=pant1;
  }
  if (( mouseX>escX(650))&&(mouseX<escX(750))&&(mouseY>escY(530))&&(mouseY<escY(560)) ) {
    pantalla=pant2;
  }
}

void botonGeneralMod2(int mouseX1, int mouseX2, int mouseY1, int mouseY2, int pant1) {
  boolean puerta = (mouseX>escX(mouseX1))&&(mouseX<escX(mouseX2))&&(mouseY>escY(mouseY1))&&(mouseY<escY(mouseY2));

  if ( puerta) {
    pantalla=pant1;
    posY = escY(600);
  }
}

void botonGeneralMod3() {
  boolean aplausos = (  (mouseX>escX(440))&&(mouseX<escX(617))&&(mouseY>escY(389))&&(mouseY<escY(458)) || (mouseX>escX(615))&&(mouseX<escX(718))&&(mouseY>escY(201))&&(mouseY<escY(462)) || (dist(mouseX, mouseY, escX(529), escY(355))<40) ||   (dist(mouseX, mouseY, escX(675), escY(157))<40) );  

  if ( aplausos) {
    pantalla=5;
  }
}

void interaccionPant4y5(int numText, int posXtext) {

  if ( (mouseX>escX(650))&&(mouseX<escX(750))&&(mouseY>escY(530))&&(mouseY<escY(560)) ) {
    fill(253, 190, 20);
  } else {
    fill(0);
  }
  textSize(15);
  text(textos[numText],escX(posXtext), escY(550));
}

float escX(int valor) {
  return map(valor, 0, 800, 0, width);
}

float escY(float valor) {
  return map(valor, 0, 600, 0, height);
}
