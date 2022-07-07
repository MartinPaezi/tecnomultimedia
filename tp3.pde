// https://youtu.be/FcuF2aOlP6A

int pantalla = 1;
PImage pasto;
PImage cielo;
PImage pelota;
PImage arco;
PImage ccreditos;
PImage guantes;
PImage ganaste;
PImage perdiste;
int[] xi = {131,159,11,399,151};
int[] yi = {170,266,473,473,226};
int[] l = {241,161,138,78,190};
int[] a = {42,35,19,19,25};
int[] tam = {50};
float[] px = {random(25,430),random(25,230),random(200,430),random(25,430),random(250,430),random(25,230),random(25,430),random(200,430),random(25,230)};
float[] py = {random(110,320),random(110,320),random(110,320),random(110,320),random(110,320),random(110,320),random(110,320),random(110,320),random(110,320)};
float posX;
float posY;
int counter;

void setup(){
  size(500,500);
  
  cielo = loadImage("cielo.jpg");
  pasto = loadImage("ppasto.png");
  pelota = loadImage("pelota.png");
  arco = loadImage("arco.jpg");
ccreditos = loadImage("ccreditos.jpg");
guantes = loadImage("guantes.png");
ganaste = loadImage("ganaste.jpg");
perdiste = loadImage("perdiste.jpg");
image(cielo,0,0,500,500);
  image(pasto,0-50,185,600,550);
  image(pelota,20,400,110,110);
  noCursor();
 posX=0;
 posY=0;
}

void draw(){

  println(mouseX,mouseY);
   println(frameCount);
println(dist(mouseX, mouseY, posX, posY));
  
   if(pantalla == 1){
   frameCount=1;
   counter=0;
     image(cielo,0,0,500,500);
  image(pasto,0-50,185,600,550);
  image(pelota,20,400,110,110);
  textSize(40);
  fill(255);
 text("Iniciar juego",130,200); 
 text("Creditos",160,300);
 textSize(30);
 text("Instrucciones",150,250);
   image(guantes,mouseX-25,mouseY-25,50,50);

}
  if(pantalla == 2){
    
image(arco,0,0,500,500);
  fill(0,255,0);
  textSize(40);
  text("Atajadas",300,40);
textSize(25);
fill(255);
text("volver al inicio", 10,490);
text("creditos",400,490);

Atajadas(360,100);

for(int i=0;i<9;i++){
if(frameCount >= 80*(i+1) && frameCount <= (80*(i+1))+60){
image(pelota,px[i],py[i],tam[0],tam[0]);
 posX = px[i];
  posY = py[i];
 }

}

 image(guantes,mouseX-35,mouseY-35,70,70);
 Ganaste();
 Perdiste();
}
  if(pantalla == 3){
    tint(255);
image(ccreditos,0-50,0,600,500); 
   textSize(20);
fill(255);
text("volver al inicio", 10,490);
textSize(40);
text("Gracias por jugar",130,80);
textSize(20);
text("Desarrollador: Martín Páez Igoldi",180,490);
text("Juego de referencia: Goalkeeper Champ",110,460);

 image(guantes,mouseX-25,mouseY-25,50,50);
  }
  
   if(pantalla == 4){
     image(cielo,0,0,500,500);
  image(pasto,0-50,185,600,550);
  image(pelota,400,400,110,110);
  textSize(25);
fill(255);
text("volver al inicio", 10,490);
text("Atajá tantos tiros como puedas",50,200);
text("¡Si atajás 5 o mas ganás!",90,300);
 image(guantes,mouseX-25,mouseY-25,50,50);
   }
   if(pantalla == 5){
   image(ganaste,0,0,500,500);
   textSize(40);
   fill(255);
   text("¡Ganaste!",300,170);
   textSize(25);

text("volver al inicio", 10,490);
text("creditos",400,490);
    image(guantes,mouseX-25,mouseY-25,50,50);
   }
   if(pantalla == 6){
     image(perdiste,0,0,500,500);
     textSize(40);
   fill(255);
   text("Mejor suerte la próxima",20,50);
   textSize(25);

text("volver al inicio", 10,490);
text("creditos",400,490);
 image(guantes,mouseX-25,mouseY-25,50,50);
   }
}
