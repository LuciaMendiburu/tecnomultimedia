boolean estoyJugando(){
  
  return(estado == 0);
  
}


boolean gano(){
  
  return(estado == 1);
  
}


boolean pierdo(){
  
  return(estado == 2);
  
}

void inicializar(){
  
  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
  estado = 0;
  temporizador = 0;
}
