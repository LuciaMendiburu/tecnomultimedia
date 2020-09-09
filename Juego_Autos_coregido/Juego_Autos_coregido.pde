//Pestaña Principal

int cantCaminos = 3;
int cantAutos = 4;
int tamX, tamY, posX;
int [][] autosEnemigos = new int [cantCaminos][cantAutos];
int temporizador = 0;
int estado = 0;
// 0 = incio => boolean jugando
// 1 = perder => boolean pierdo
// 2 = ganar => boolean gano

void setup() {
  size(300, 600);

  tamX = width / cantCaminos;
  tamY = height / 4;

  inicializar();
}

void draw() {
  background(200);
  temporizador ++;
  println(temporizador);

  if (temporizador==3000) {

    estado =2;
  }

  if (estoyJugando()) {
    dibujarAutosEnemigos();
    dibujarAutoPersonaje();
  } else  if (gano()) {

    mensajePerdiste();
  } else if  (pierdo()) {
    mensajeGanaste();
  }
}

void keyPressed() {

  if (estoyJugando()) {
    moverAutoPersonaje();
  } else if ( (gano()) || (pierdo())  ) {

    if (key=='r' || key=='R' ) {
      inicializar();
      
    }
  }
}
