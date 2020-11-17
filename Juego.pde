class Juego {

  int estado;
  int cantImagenes = 6;
  PImage [] imagenes = new PImage [cantImagenes]; 
  VideoJuego videoJuego;
 

  Juego() {

    inicializar();
  }

  void dibujar() {

    if (estado == 0) {
      dibujoPantallaInicio();
    } else if (estado == 1) {
      dibujoVideoJuego();
    } else if (estado == 2) {
      dibujoHaGanado();
    } else if (estado == 3) {
      dibujoHaPerdido();
    }
  }

  void teclaPresionada() {

    if (estado == 0) {
      estado = 1;
    } else if (estado == 1) {
      videoJuego.teclaPresionada();
    } else if (estado == 2) {
       controlador.pantallaActual = controlador.pantallas[8];
       inicializar();
      
    } else if (estado == 3) {
      controlador.pantallaActual = controlador.pantallas[9];
      inicializar();
      
    }
  }







  void dibujoPantallaInicio() {
    fill(255);
    rect(0,0,resize.escX(800), resize.escY(600));
    image(controlador.imagenes[23], 0, 0,resize.escX(800), resize.escY(600));
    fill(0);
    textAlign(CENTER);
    textSize( resize.escTxt(20));
    text("A cumplir la tarea del emperador ¡Pero apresúrate!\nSi no, ¡llegarás tarde!\n Presiona cualquier tecla para iniciar", width/2, height/5);
  }


  void dibujoVideoJuego() {
    
    fill(255);
    rect(0,0,resize.escX(800),resize.escY(600));

    videoJuego.dibujar();
    if (videoJuego.controlarGanarOPerder() == 2) {

      estado = 2;
    } else if (videoJuego.controlarGanarOPerder() == 3) {
      estado = 3;
    }
    
       image(controlador.imagenes[20], 0, 0,resize.escX(800), resize.escY(600));
  }




  void dibujoHaGanado() {
    fill(253,194,36);
    rect(0,0,resize.escX(800),resize.escY(600));
    image(controlador.imagenes[23], 0, 0,resize.escX(800), resize.escY(600));
    textAlign(CENTER);
    textSize( resize.escTxt(20));
    fill(0);
    text("¡Las telas son falsas!\n ahora a decirle la verdad al emperador\nPresiona cualquier tecla para continuar", width/2, height/5);
    
    
  }

  void dibujoHaPerdido() {
    
    fill(74,118,233);
    rect(0,0,resize.escX(800),resize.escY(600));
    image(controlador.imagenes[22], 0, 0,resize.escX(800), resize.escY(600));
    textAlign(CENTER);
    textSize( resize.escTxt(20));
    fill(0);
    text("¡Ya no hay mas tiempo!\nDeberas mentirle al emperador sobre las telas\nPresiona cualquier tecla para continuar", width/2, height/5);
    
    
    
  }




  void  inicializar() {


    videoJuego= new VideoJuego();

    estado = 0;
  }
  
 


  
  
  
  
  
  
}
