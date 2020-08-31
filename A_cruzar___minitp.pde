int cantH = 10;
int tam;
int [] posX = new int [cantH]; // Posiciones en X de cada ellipse
int [] dirX = new int [cantH]; // Direcciones en X de cada ellipse
int personajePosX, personajePosY;


void setup() {
  size(500, 500);
  tam = height/cantH;

  surface.setResizable(true);

  textSize(20);
  textAlign(CENTER);

  //No calculo la última fila, que es donde arranca el personaje
  for (int h=1; h < cantH-1; h++) {
    //Genero aleatoriamente la posX de la elipse
    posX[h] = round(random(tam, width-tam));
    //Genero aleatoriamente la dirección
    if (random(0, width)>width/2)
      dirX[h] = 1;
    else
      dirX[h] = -1;
  }

  //La ubicación del Personaje
  personajePosX = width/2;
  personajePosY = height - tam/2;
}

void draw() {  
  tam = height/cantH;
  noStroke();
  background(200);
for (int r=0; r < cantH; r++) {
   rect(r*tam, 0,tam, tam );
    }


  //No calculo la última fila, que es donde arranca el personaje
  for (int h=1; h < cantH-1; h++) {
    fill(255);
    ellipse(posX[h], h*tam + tam/2, tam, tam);
    //Calculo la nueva posición
    posX[h] = posX[h] + dirX[h];
    //Si toca algún borde, cambia la dirección
    float D = dist(personajePosX, personajePosY, posX[h], h*tam);

    println(D);

    if (D<tam) {
      personajePosX = width/2;
      personajePosY = height - tam/2;
    }

    if (posX[h] < tam/2 || posX[h] > width-tam/2) {
      dirX[h] = dirX[h] * -1;
    }
  }

  fill(204, 115, 252);
  ellipse(personajePosX, personajePosY, tam, tam);
  
  if( personajePosY<=tam){
  text("¡GANASTE!\nEspera unos segundos para jugar otra vez", width/2,height/2);
 personajePosY=tam/2;
}
}

void keyPressed() {
  //Controlo el personaje arriba y abajo
  if (keyCode == UP) {

    if (personajePosY>tam/2) {
      personajePosY = personajePosY - tam;
    }
  } else if (keyCode == DOWN) {

    if (personajePosY<height - tam/2) {
      personajePosY = personajePosY + tam;
    }
  } else if (keyCode == LEFT) {
    
    if(personajePosX> tam/2){
    personajePosX = personajePosX - tam/2;
    }
    
  } else if (keyCode == RIGHT) {

    if(personajePosX< width - tam/2 ){
    personajePosX = personajePosX + tam/2 ;
    }
    
  }
}
