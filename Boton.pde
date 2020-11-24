class Boton{
  int posX, posY, ancho, alto, pantallaAIr, posXTextInteractivo, posYTextInteractivo, tamTexto;
  String texto;
  String numTextInteractivo;
  PImage  numImgInteractiva;
  Transparencia transparencia;
  
 ;
  Boton(String texto, int posX, int posY, int pantallaAIr, PImage p_numImgInteractiva, String p_numTextInteractivo, int p_posXTextInteractivo, int p_posYTextInteractivo, int p_tamTexto, int p_ancho, int p_alto ,Transparencia transparencia){
    this.texto = texto;
    
    ancho = p_ancho;
    alto = p_alto;
    this.transparencia = transparencia;
    this.posX = posX;
    this.posY = posY;
    this.pantallaAIr = pantallaAIr;
    numImgInteractiva = p_numImgInteractiva;
    numTextInteractivo = p_numTextInteractivo;  
    posXTextInteractivo = p_posXTextInteractivo;
    posYTextInteractivo = p_posYTextInteractivo;
    tamTexto = p_tamTexto;
    ancho = p_ancho;
    alto = p_alto;
    
    
  
  }
  
  void dibujar(){
    
    if(transparencia!= null){
    noStroke();
    }else if(transparencia == null){
      
      stroke(0);
    }
      
      
    
    
    
    
    fill(255,0);
    strokeWeight(resize.escX(3));
    rect(resize.escX(posX), resize.escY(posY), resize.escX(ancho), resize.escY(alto));
    
    
    if (mouseX > resize.escX(posX) && mouseX <resize.escX(posX) + ancho && mouseY > resize.escY(posY) && mouseY < resize.escY(posY) + alto) {
     fill(253, 190, 20);
     image(numImgInteractiva, 0, 0,resize.escX(800), resize.escY(600));
    text(numTextInteractivo, resize.escX(posXTextInteractivo), resize.escY(posYTextInteractivo));
    } else {
      fill(0);
    }
    textSize(resize.escTxt(tamTexto));
    text(texto, resize.escX(posX) + 40, resize.escY(posY) + (alto-(width/150)));
    
    
  }
  
  int mouseClicked(){
    if(mouseX > resize.escX(posX) && mouseX < resize.escX(posX)+ ancho && mouseY > resize.escY(posY) && mouseY < resize.escY(posY) + alto ){
      return pantallaAIr;
  
    }
    return -1;
  }
  
}
