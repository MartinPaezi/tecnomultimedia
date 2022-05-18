 PImage harry;
PFont letra;
float posX;
float posY;
boolean activoMov = false;
int movposY = 0;
int pantalla = 1;


void setup(){
 size(500,500);
 background(10);
 

posX = 420;
posY = 420;

harry = loadImage("harryy.jpg");
letra = loadFont("Chill.vlw");
textFont(letra);



}

void draw(){
  println(frameCount);
  
  if(pantalla == 1){
     frameCount = 1;
     background(10);
image(harry,mouseX-100,mouseY-100,200,200);
textSize(120);
text("Harry Potter",40,movposY + 250);
textSize(40);
text("y el prisionero de Azkaban",60,movposY + 300);
 fill(#E8E22A);


 circle(posX, posY,10);
textSize(40);
text("¡La Snitch dorada!¡Atrapala!",70,movposY + 475);
 
  }
  
  if(pantalla == 2){

  background(10);
image(harry,mouseX-100,mouseY-100,200,200);
textSize(120);
text("Harry Potter",40,movposY + 250);
textSize(40);
text("y el prisionero de Azkaban",60,movposY + 300);
 fill(#E8E22A);


 circle(posX, posY,10);
textSize(40);
text("¡La Snitch dorada!¡Atrapala!",70,movposY + 475);

 if(activoMov){
movposY --;
 }
  } 
  
  if(pantalla == 3){
    background(10);
    image(harry,mouseX-100,mouseY-100,200,200);
    textSize(40);
  text("Protagonizada por",70, movposY + 1000);
  text("Daniel Radcliffe como Harry Potter",70, movposY + 1100);
  circle(posX, posY,10);
  if(activoMov){
movposY --;
 } }
 
  if(pantalla == 4){
 background(10);
 image(harry,mouseX-100,mouseY-100,200,200);
 textSize(30);
 text("Con Emma Watson como Hermione Granger",70, movposY + 1600);
 text("y Rupert Grint como Ron Weasley",70, movposY +1650);
  circle(posX, posY,10);
  if(activoMov){
movposY --;
 } 
  }
  
  if(pantalla == 5){
 background(10);
 image(harry,mouseX-100,mouseY-100,200,200);
 text("Música",70, movposY + 2150);
 text("John Williams",70,movposY + 2200);
  circle(posX, posY,10);
  if(activoMov){
movposY --;
 } 
  }
  
  if(pantalla == 6){
 background(10);
 image(harry,mouseX-100,mouseY-100,200,200);
 text("Dirigida por Alfonso Cuarón",70, movposY + 2700);
  circle(posX, posY,10);
  if(activoMov){
movposY --;
 } 
  }
  
  if(pantalla == 7){
 background(10);
text("Fin", 240, 250);
  }
 
 if(frameCount<=490 && frameCount>=3){
   pantalla = 2;
 }
 
 if(frameCount>=491 && frameCount<=1100){
  pantalla = 3;
 }
if(frameCount>=1101 && frameCount<=1650){
  pantalla = 4;
}
if(frameCount>=1651 && frameCount<=2200){
  pantalla = 5;
}
if(frameCount>=2201 && frameCount<=2740){
  pantalla = 6;
}
if(frameCount>=2741){
  pantalla = 7;
}
}


void mouseClicked(){
  float d2 = dist(mouseX, mouseY, posX, posY);
  int r2 = 20/2;
  if(d2<r2){
    pantalla++;
     posX = random(10,490);
  posY = random(10,490);
  activoMov = true;
     frameCount++;
  }
}
