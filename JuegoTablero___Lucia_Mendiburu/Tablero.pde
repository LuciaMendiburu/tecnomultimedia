class Tablero{
  int cantidadCeldas = 10;
  //Celda [][] celdas;
  
  Tablero(){
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
        //celdas[i][j] = new Celda();
         rect(i*cantidadCeldas,j*cantidadCeldas,width/cantidadCeldas,height/cantidadCeldas);
      }
    }
  }
  
  void dibujar(){
    for(int i=0; i<cantidadCeldas; i++){
      for(int j=0; j<cantidadCeldas; j++){
        //celdas[i][j]= rect(i*cantidadCeldas, j*cantidadCeldas, cantidadCeldas, cantidadCeldas);
       rect(i*cantidadCeldas,j*cantidadCeldas,width/cantidadCeldas,height/cantidadCeldas);
     }
   }
 }
  
  void teclaPresionada(){
    
  }
  
}
