//Pestaña Personaje
void inicializarAutoPersonaje(){
  posX = 0;
}

void dibujarAutoPersonaje(){
  fill(255,0,0);
  rect(posX, height - tamY, tamX, tamY);
}

void moverAutoPersonaje(){
  if (keyCode == LEFT) {
    posX = posX - tamX;
  } else if (keyCode == RIGHT) {
    posX = posX + tamX;
  }
}


void mensajePerdiste(){
  textSize(15);
  textAlign(CENTER);
  text("¡Perdiste!\n toca la letra r\n para volver a empezar", width/2, height/2);
  
}


void mensajeGanaste(){

textSize(15);
  textAlign(CENTER);
  text("¡Ganaste!\n toca la letra r\n para volver a empezar", width/2, height/2);


}
