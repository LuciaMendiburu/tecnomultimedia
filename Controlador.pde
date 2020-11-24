class Controlador {

  PFont fuente1;
  Creditos creditos;

  int cantImagenes = 25;
  PImage [] imagenes = new PImage [cantImagenes]; 

  int cantTextos = 29;
  String[] textos = new String [cantTextos]; 

  int cantidadPantallas = 11;
  PImage [] fondos = new PImage [cantidadPantallas];

  Pantalla pantallaActual;
  Pantalla [] pantallas = new Pantalla [cantidadPantallas];
  Juego juego;


  SoundFile musicaFondo;




  Controlador(PApplet pro) {


    musicaFondo = new SoundFile(pro, "Kingdom Dance (From TangledScore).mp3");
    this.musicaFondo.loop();
    musicaFondo.amp(0.1);

    inicializarTextos();
    inicializarImagenes();
    inicializarFuente();


    int pantalla;
    Boton boton1, boton2;
    Transparencia transparencia;



    //Creo la pantalla 0


    pantalla = 0;
    boton1 = new Boton (textos[0], 310, 380, 1, imagenes[19], textos[28], 2, 2, 30, 200, 38, null);
    boton2 = new Boton(textos[1], 310, 430, 5, imagenes[19], textos[28], 2, 2, 30, 200, 38, null);
    pantallas[pantalla] = new Pantalla(imagenes[5], imagenes[19], textos[28], textos[28], 0, 0, boton1, boton2, null, null);

    //Creo la pantalla 1
    pantalla = 1;
    boton1 = new Boton (textos[5], 450, 530, 3, imagenes[3], textos[4], 265, 107, 15, 100, 30, null);
    boton2 = new Boton(textos[7], 650, 530, 2, imagenes[3], textos[6], 245, 110, 15, 100, 30, null);
    pantallas[pantalla] = new Pantalla(imagenes[1], imagenes[2], textos[2], textos[3], 30, 530, boton1, boton2, null, null);

    //Creo la pantalla 2  
    pantalla = 2;
    boton1 = new Boton (textos[5], 450, 530, 6, imagenes[7], textos[28], 265, 107, 15, 100, 30, null);
    boton2 = new Boton(textos[7], 650, 530, 7, imagenes[8], textos[28], 245, 110, 15, 100, 30, null);
    pantallas[pantalla] = new Pantalla(imagenes[6], imagenes[2], textos[8], textos[9], 30, 540, boton1, boton2, null, null);

    //Creo la pantalla 3  
    pantalla = 3;
    boton1 = new Boton (textos[5], 450, 530, 4, imagenes[3], textos[12], 255, 107, 15, 100, 30, null);
    boton2 = new Boton(textos[7], 650, 530, 2, imagenes[3], textos[13], 255, 110, 15, 100, 30, null);
    pantallas[pantalla] = new Pantalla(imagenes[1], imagenes[2], textos[10], textos[11], 30, 540, boton1, boton2, null, null);
    //Creo la pantalla 4  
    pantalla = 4;

    boton2 = new Boton(textos[1], 650, 530, 5, imagenes[19], textos[28], 255, 110, 15, 100, 30, null);
    pantallas[pantalla] = new Pantalla(imagenes[9], imagenes[2], textos[14], textos[15], 30, 540, null, boton2, null, null);

    //Creo la pantalla 5 (creditos)  
    pantalla = 5;
    creditos = new Creditos(textos[16], 250, 550, 0);
    boton2 = new Boton(textos[17], 650, 530, 0, imagenes[19], textos[28], 255, 110, 15, 100, 30, null);
    pantallas[pantalla] = new Pantalla(imagenes[12], imagenes[19], textos[28], textos[28], -1, -1, null, boton2, creditos, null);


    //-----------------------------------------------------------------------------------------------------------------------------

    //Creo la pantalla 7 (juego)  
    pantalla = 7;
    juego = new Juego();
    pantallas[pantalla] = new Pantalla(imagenes[19], imagenes[19], textos[28], textos[28], -1, -1, null, null, null, juego);

    //-----------------------------------------------------------------------------------------------------------------------------

  
    
    //Creo la pantalla 6 (boton puerta)  
    pantalla = 6;
    transparencia = new Transparencia();
    boton1 = new Boton (textos[28], 593, 15, 4, imagenes[11], textos[28], -1, -1, 15, 182, 353,transparencia);
    pantallas[pantalla] = new Pantalla(imagenes[10], imagenes[2], textos[18], textos[19], 30, 540, boton1, null, null, null);

    //Creo la pantalla 8 (boton Señora)  
    pantalla = 8;
    transparencia = new Transparencia();
    boton1 = new Boton (textos[28], 506, 334, 5, imagenes[18], textos[28], -1, -1, 15, 64, 132,transparencia);
    boton2 = new Boton(textos[28], 652, 124, 5, imagenes[18], textos[28], -1, -1, 15, 66, 347,transparencia);
    pantallas[pantalla] = new Pantalla(imagenes[15], imagenes[2], textos[24], textos[25], 30, 540, boton1, boton2, null, null);

    //Creo la pantalla 9 (boton señora)  
    pantalla = 9;
    transparencia = new Transparencia();
    boton1 = new Boton (textos[28], 506, 334, 5, imagenes[18], textos[28], -1, -1, 15, 64, 132,transparencia);
    boton2 = new Boton(textos[28], 652, 124, 5, imagenes[18], textos[28], -1, -1, 15, 66, 347,transparencia);
    pantallas[pantalla] = new Pantalla(imagenes[17], imagenes[2], textos[26], textos[27], 30, 540, boton1, boton2, null, null);

    
    //Al terminar de crear las pantallas, indico la actual.
    pantallaActual = pantallas[0];
  }







  void dibujar() {
    pantallaActual.dibujar();
  }



  void mouseClicked() {
    int pantallaAIr = pantallaActual.mouseClicked();
    if (pantallaAIr != -1) {
      pantallaActual = pantallas[pantallaAIr];
    }

    creditos.reinicializar();
  }

  void teclaPresionada() {
    juego.teclaPresionada();
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


  void inicializarImagenes() {
    for (int i=1; i<cantImagenes; i++) {
      imagenes[i] = loadImage("imagen" + i + ".png");
    }
  }



  void inicializarFuente() {
    fuente1 = loadFont("fuente.vlw");
    textFont(fuente1);
  }
}
