PFont fuente1;
int pantalla = 0;
float posY = 550;
int cantImagenes = 20;
int cantTextos = 29;
PImage [] imagenes = new PImage [cantImagenes]; 
String[] textos = new String [cantTextos]; 


void setup() {
  inicializar();
  size(800, 600);
  
}


void draw() {
  
  surface.setResizable(true);
 
  
  
  if (pantalla==0) {
    pantalla0();
  } else if (pantalla==1) {
    pantalla1();
  } else if (pantalla==2) {
    pantalla2();
  } else if (pantalla==3) {
    pantalla3();
  } else if (pantalla==4) {
    pantalla4();
  } else if (pantalla==6) {
    pantalla6();
  } else if (pantalla==5) {
    pantalla5();
  } else if (pantalla==7) {
    pantalla7();
  } else if (pantalla==8) {
    pantalla8();
  } else if (pantalla==9) {
    pantalla9();
  }
}
void mouseClicked() {


  if (pantalla==0) {
   botones0();
  } else if (pantalla==1) {
    botones1();
  } else if (pantalla==2) {
   botones2();
  } else if (pantalla==3) {
   botones3();
  } else if (pantalla==4) {
    botones4();
  } else if (pantalla==6) {
    botones6();
  } else if (pantalla==5) {
    botones5();
  } else if (pantalla==7) {
    botones7();
  } else if (pantalla==8) {
   botones8();
  } else if (pantalla==9) {
  botones9();
  }
} 
