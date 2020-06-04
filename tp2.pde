PImage img ;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
PImage img6;
PImage img7;
int opacidad = 0;
int aumentar = 0;
PFont font ;
float posY1= 620;
float posY2= 640;
float posY3= 660;
float DposY= 0;
float posY4= 800;
float posY5= 840;
float posY6= 900;
float posY7= 930;
float posY8= 950;
float posY13= 980;
float posY9= 1480;
float posY10= 1510;
float posY14= 1540;
float posY11= 1855;
float posY12= 1885;
float posY15= 2100;
float posY16= 2220;
float posY17= 2435;
float posY18= 2600;





void setup () {

  size(1000, 600);
  background(0);
  font = loadFont("Calibri-Bold-48.vlw");
  textFont(font);
  img = loadImage ("imagen inicial.jpg");
  img2 = loadImage("team_tanuki.jpg");
  img3 = loadImage("difuminado_de_texto.png");
  img4 = loadImage("CO-GAME DIRECTORS.jpg");
  img5 = loadImage("produccion.jpg");
  img6 = loadImage("DESING_TEAM.jpg");
  img7 = loadImage("puntero_mouse.png");
  
  
}

void draw() {
  
  noCursor();
  image(img, 0, 0);
  textSize(13);
  fill(120,0,0);
  text(" Clikee en cualquier lugar de la pantalla para continuar",30,30);
  fill(0, opacidad);
  rect(0, 0, 1000, 600);
  opacidad = opacidad + aumentar;
  fill(255);
  text("We hope you have enjoyed playing Tomb Raider" ,370,posY1);
  text(" We have worked our hardest to bring you the best game we could possibly make." ,270,posY2);
  text("Thank you for looking taking the time to complete our game" ,340,posY3);
  posY1 = posY1 + DposY;
  posY2 = posY2 + DposY;
  posY3 = posY3 + DposY;
  textSize(25);
  text("CRISTAL DYNAMICS " ,395,posY4);
  text("CORE TEAM", 440, posY5);
  textSize(15);
  fill(170,0,0);
  text("TEAM TANUKI", 465, posY6);
  posY4 = posY4 + DposY;
  posY5 = posY5 + DposY;
  posY6 = posY6 + DposY;
  fill(255);
  text("HEAD OF STUDIO                                         EXECUTIVE PRODUCER                                   CREATIVE DIRECTOR", 180, posY7);
  text("Darrell Gallagher                                              Ron Rosenberg                                                 Noah Hughers", 180, posY8);
  posY7 = posY7 + DposY;
  posY8 = posY8 + DposY;
  fill(170,0,0);
  text("CO-GAME DIRECTORS", 435, posY9);
  fill(255);
  text("Daniel Chayer (Bisson)                                          Daniel Neuburger", 290, posY10);
  posY9 = posY9 + DposY;
  posY10 = posY10 + DposY;
  image(img4, 240, posY14);
  posY14 = posY14 + DposY;
  
  text("LEAD ANIMATOR                                     LEAD ENGINEER                                  SENIOR  ART DIRECTOR", 210, posY11);
  text("Brandon Gernandez                                  Scott Krotz                                        Brian Horton", 210, posY12);
  posY11 = posY11 + DposY;
  posY12 = posY12 + DposY;
  image(img2, 240, posY13);
  posY13 = posY13 + DposY;
  
  image(img5, 50, posY15);
  fill(170,0,0);
  textSize(15);
  text("PRODUCTION", 700, posY15+70);
  posY15= posY15 + DposY;
  textSize(13);
  fill(255);
  text("Lead Producer                  Kyle Peschel\nSenior Producer               Alex Offermann\nProducer                          Trevor Grimshaw\nProducer                          Eric Tam\nProducer                          Kam Zambel",620,posY16);  
  posY16= posY16 + DposY;
  
  image(img6, 450, posY17);
  text("Lead Level Designer                                        Jason Botta \nSenior Designer                                               Michael Brinker\nSenior  Designer                                              Jim Conrad\nSenior Lever Designer                                    David Avi Mendelsohn\nSenior Lever Designer                                     Ian miller",50,posY18);
  fill(170,0,0);
  text("DESIGN TEAM", 180, posY17+120);
  posY18 = posY18 + DposY;
  posY17 = posY17 + DposY;
  
  
  
  
  image(img7, mouseX, mouseY,60,60);
  
  
  image(img3, 0, 0);
  
  
}


void mouseClicked() {
  aumentar = 5;
  DposY = -0.5;
 
  
}



  
