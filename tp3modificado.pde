PFont fuente1;
int pantalla = 0;
int posY = 600;
int cantImagenes = 20;
PImage [] imagenes = new PImage [cantImagenes]; 
;

void setup(){
  inicializar();
    size(800,600);
   }
   
   
void draw(){
  if(pantalla==0){
    boolean rectSup = (mouseX>295)&&(mouseX<530)&&(mouseY>380)&&(mouseY<410);
    boolean rectInf = (mouseX>295)&&(mouseX<530)&&(mouseY>430)&&(mouseY<460);
    
   
    textSize(30);
    image(imagenes[5],0,0);
    strokeWeight(3);
    fill(255);
    rect(295,380,235, 30);
    rect(295,430,235, 30);
     if( rectSup ){
      fill(253,190,20);
    }else{
    fill(0);
    }
    text("Iniciar", 370,405);
    if( rectInf ){
      fill(253,190,20);
    }else{
    fill(0);
    }
    text("Creditos", 360,455);
  }else if(pantalla==1){
    
  
  

   boolean rectA = (mouseX>450)&&(mouseX<550)&&(mouseY>530)&&(mouseY<560);
   boolean rectB = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
    
   image(imagenes[1],0,0);
   image(imagenes[2],0,0);
   textSize(15);
   fill(0);
   text("¡El emperador ha recibido visitas! son dos hombres que presentan unas telas que tienen la milagrosa virtud\nde ser invisibles a toda persona que no fuera apta para su cargo o que fuera irremediablemente estúpida", 40,490);
   text("¿Qué debe hacer?", 40,522);
   fill(255);
   rect(450,530,100, 30);
   rect(650,530,100, 30);
   
    if( rectA){
      fill(253,190,20);
      image(imagenes[3],0,0);
      text("¿Y cómo se yo que no me\n están mintiendo? exijo\n pruebas", 260,120);
    }else{
    fill(0);
    }
    text("A)", 495,550);
    if( rectB ){
      fill(253,190,20);
      image(imagenes[3],0,0);
      text("¡Deben ser vestidos magníficos!\n quiero esas telas", 245,120);
    }else{
    fill(0);
    }
    text("B)", 690,550);
  
  }else if(pantalla==2){
    
  
  
   boolean rectA = (mouseX>450)&&(mouseX<550)&&(mouseY>530)&&(mouseY<560);
   boolean rectB = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
    
   image(imagenes[6],0,0);
   image(imagenes[2],0,0);
   textSize(15);
   fill(0);
   text("Así fue que la compra fue realizada, y mandaron a hacer las telas cuanto antes. A medida que el tiempo\npasaba, y mientas los dos hombres fingían tejer (porque en realidad nada hacían), el emperador quería\nasegurarse de que ellos estén haciendo bien su trabajo, de esta manera decidió comprobarlo", 40,490);
   text("¿Debería ir él, o un empleado de confianza?", 40,540);
   fill(255);
   rect(450,530,100, 30);
   rect(650,530,100, 30);
   
    if( rectA){
      fill(253,190,20);
      image(imagenes[7],0,0);
      
    }else{
    fill(0);
    }
    text("A)", 495,550);
    if( rectB ){
      fill(253,190,20);
      image(imagenes[8],0,0);
    
    }else{
    fill(0);
    }
    text("B)", 690,550);
  
  
  }else if(pantalla==3){
    
  
  

   boolean rectA = (mouseX>450)&&(mouseX<550)&&(mouseY>530)&&(mouseY<560);
   boolean rectB = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
    
   image(imagenes[1],0,0);
   image(imagenes[4],0,0);
   text("¡Debe creernos!", 355,145);
   image(imagenes[2],0,0);
   textSize(15);
   fill(0);
   text("Fue así que aquellos truhanes le dieron un discurso extremadamente falso, pero lleno de halagos al\nemperador y de los supuestos beneficios económicos que tendría el pueblo. Al terminar, se quedaron\nesperando una respuesta del emperador, para ver si habían logrado persuadirlo, o no", 40,490);
   text("¿Tendría que creerles o pensar que es mentira?", 40,540);
   fill(255);
   rect(450,530,100, 30);
   rect(650,530,100, 30);
   
    if( rectA){
      fill(253,190,20);
      image(imagenes[3],0,0);
      text("Sus palabras son solo mentiras,\nustedes son dos estafadores,\nexijo que se retiren\ninmediatamente", 250,110);
    }else{
    fill(0);
    }
    text("A)", 495,550);
    if( rectB ){
      fill(253,190,20);
      image(imagenes[3],0,0);
      text("Sus palabras me parecen\ngenuinas y sinceras, además,\nsiemprequiero lo mejor para\nmi reino", 250,110);
    }else{
    fill(0);
    }
    text("B)", 690,550);
  
  }else if(pantalla==4){
    
  
  

    
   boolean creditos = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
    
   image(imagenes[9],0,0);
   
   
     
   image(imagenes[2],0,0);
   textSize(15);
   fill(0);
   text("Así fue que los dos estafadores se fueron y nunca más regresaron", 40,490);
   text("Fin", 40,540);
   fill(255);
  
   rect(650,530,100, 30);
   
       if( creditos ){
      fill(253,190,20);
    }else{
    fill(0);
    }
    
    text("Créditos", 670,550);
  
  }else if(pantalla==6){
    
    boolean puerta = (mouseX>593)&&(mouseX<774)&&(mouseY>14)&&(mouseY<369) ;
  
    
   image(imagenes[10],0,0);
   
   if(puerta){
     image(imagenes[11],0,0);
   }
     
     
   image(imagenes[2],0,0);
   textSize(15);
   fill(0);
   text("Al entrar a este lugar, el emperador encontró a los dos hombres guardándose los hilos caros que pedían\npara tejer las telas. De esta manera, el emperador entendió que todo era una mentira para sacarle su\ndinero", 40,490);
   text("¡Recorre la imagen para avanzar!", 40,540);
   fill(255);
  
    
  }else if(pantalla==5){
    
 image(imagenes[12],0,0);

  boolean inicio = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
   textSize(20);
   fill(0);
   text("EL VESTIDO NUEVO DEL EMPERADOR\n\n\n                Tecno Multimedia 1\n\n                      Comisión 4\n\n                 Lucia Mendiburu\n\n",250,posY);
   
   if(posY<=600){
     posY=posY-1;
   }else if(posY== -50){
     posY = -50;
   }
   
   strokeWeight(3);
   fill(255);
   rect(640,530,100, 30);
       if( inicio ){
      fill(253,190,20);
    }else{
    fill(0);
    }
    textSize(15);
    text("Inicio", 675,550);
  
  
  }else if(pantalla==7){
    
  
  

   boolean rectA = (mouseX>450)&&(mouseX<550)&&(mouseY>530)&&(mouseY<560);
   boolean rectB = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
    
   image(imagenes[13],0,0);
   image(imagenes[2],0,0);
   textSize(15);
   fill(0);
   text("El empleado se dirigió al lugar donde los hombres estaban trabajando, pero al ver los telares vacios,\nse sintió decepcionado, por no creerse suficiente para el cargo en el que trabajaba", 40,490);
   text("¿Qué debe hacer?", 40,522);
   fill(255);
   rect(450,530,100, 30);
   rect(650,530,100, 30);
   
    if( rectA){
      fill(253,190,20);
      image(imagenes[14],0,0);
      text("¡Tengo que decirle al emperador\nla verdad de lo que ví", 274,160);
    }else{
    fill(0);
    }
    text("A)", 495,550);
    if( rectB ){
      fill(253,190,20);
      image(imagenes[14],0,0);
      text("No, desde luego no\npuedo decir que no\nhe visto la tela,\nperdería mi trabajo", 309,140);
    }else{
    fill(0);
    }
    text("B)", 690,550);
  
  }else if(pantalla==8){
    
   boolean aplausos = (  (mouseX>440)&&(mouseX<617)&&(mouseY>389)&&(mouseY<458) || (mouseX>615)&&(mouseX<718)&&(mouseY>201)&&(mouseY<462) || (dist(mouseX,mouseY,529,355)<40) ||   (dist(mouseX,mouseY,675,157)<40) );     
   
    
   image(imagenes[15],0,0);
   
   
     
   image(imagenes[2],0,0);
   textSize(15);
   fill(0);
   text("Como la soberbia pudo al emperador, dijo que él si había podido verlas, y que su empleado no merecía el\npuesto que tenía, por lo tanto, lo despidió. De esta manera, el emperador salió con ropa interior a dar su\npróximo discurso, “con sus nuevas prendas” quedando como un iluso frente a un pueblo que se reía en su cara", 25,490);
   text("Fin            (¡Recorre la imagen para avanzar!)", 250,550);
     
       if( aplausos){
         image(imagenes[16],0,0);
         image(imagenes[19],65,0);
          }
    
    
  
  }else if(pantalla==9){
    
   boolean aplausos = (  (mouseX>440)&&(mouseX<617)&&(mouseY>389)&&(mouseY<458) || (mouseX>615)&&(mouseX<718)&&(mouseY>201)&&(mouseY<462) || (dist(mouseX,mouseY,529,355)<40) ||   (dist(mouseX,mouseY,675,157)<40) );     
   
    
   image(imagenes[17],0,0);
   
   
     
   image(imagenes[2],0,0);
   textSize(15);
   fill(0);
   text(" ´´Son las telas mas hermosas que he visto´´ dijo el empleado. De esta manera, creyendo en sus palabras, el\nemperador salió con ropa interior a dar su próximo discurso, “con sus nuevas prendas” quedando como un\niluso frente a un pueblo que se reía en su cara", 25,490);
   text("Fin            (¡Recorre la imagen para avanzar!)", 250,550);
     
       if( aplausos){
         image(imagenes[18],0,0);
         image(imagenes[19],65,0);
          }
    
    
  
  }
  
  
  
}

void mouseClicked(){
  
  
if(pantalla==0){
    boolean rectSup = (mouseX>295)&&(mouseX<530)&&(mouseY>380)&&(mouseY<410);
    boolean rectInf = (mouseX>295)&&(mouseX<530)&&(mouseY>430)&&(mouseY<460);
  if( rectSup ){
      pantalla=1;
    }else if( rectInf ){
      pantalla = 5;
    }
    
}else if(pantalla==1){
  boolean rectA = (mouseX>450)&&(mouseX<550)&&(mouseY>530)&&(mouseY<560);
  boolean rectB = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
  if( rectA){
      pantalla=3;
    }
       if( rectB ){
       pantalla=2;
         } 
}else if(pantalla==2){
  boolean rectA = (mouseX>450)&&(mouseX<550)&&(mouseY>530)&&(mouseY<560);
  boolean rectB = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
  if( rectA){
      pantalla=6;
    }
       if( rectB ){
       pantalla=7;
         } 
}else if(pantalla==3){
  boolean rectA = (mouseX>450)&&(mouseX<550)&&(mouseY>530)&&(mouseY<560);
  boolean rectB = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
  if( rectA){
      pantalla=4;
    }
       if( rectB ){
       pantalla=2;
          }
}else if(pantalla==4){
  
  boolean rectC = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
  
        if( rectC ){
       pantalla=5;
         }
         
}else if(pantalla==6){
  boolean puerta = (mouseX>593)&&(mouseX<774)&&(mouseY>14)&&(mouseY<369);
 
  if( puerta){
      pantalla=4;
    }
       
}else if(pantalla==5){
  boolean inicio = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
 
  if( inicio){
      pantalla=0;
      posY = 600;
    }
       
}else if(pantalla==7){
  boolean rectA = (mouseX>450)&&(mouseX<550)&&(mouseY>530)&&(mouseY<560);
  boolean rectB = (mouseX>650)&&(mouseX<750)&&(mouseY>530)&&(mouseY<560);
  if( rectA){
      pantalla=8;
    }
       if( rectB ){
       pantalla=9;
         } 
}else if(pantalla==8){
  boolean aplausos = (  (mouseX>440)&&(mouseX<617)&&(mouseY>389)&&(mouseY<458) || (mouseX>615)&&(mouseX<718)&&(mouseY>201)&&(mouseY<462) || (dist(mouseX,mouseY,529,355)<40) ||   (dist(mouseX,mouseY,675,157)<40) );  
  
  if( aplausos){
      pantalla=5;
    }
       
}else if(pantalla==9){
  boolean aplausos = (  (mouseX>440)&&(mouseX<617)&&(mouseY>389)&&(mouseY<458) || (mouseX>615)&&(mouseX<718)&&(mouseY>201)&&(mouseY<462) || (dist(mouseX,mouseY,529,355)<40) ||   (dist(mouseX,mouseY,675,157)<40) );  
  
  if( aplausos){
      pantalla=5;
    }
       
}                
         
} 





         
         
         
