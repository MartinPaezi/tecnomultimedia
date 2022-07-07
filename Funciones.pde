

void mousePressed(){
if((mouseX > xi[0]) && (mouseX< xi[0] + l[0]) && (mouseY > yi[0]) && (mouseY < yi[0] + a[0]) && (pantalla == 1)){
  pantalla = 2;
}
if((mouseX > xi[1]) && (mouseX< xi[1] + l[1]) && (mouseY > yi[1]) && (mouseY < yi[1] + a[1]) && (pantalla == 1)){
  pantalla = 3;
}
if((mouseX > xi[2]) && (mouseX< xi[2] + l[2]) && (mouseY > yi[2]) && (mouseY < yi[2] + a[2]) && (pantalla == 2 || pantalla == 3 || pantalla == 4 || pantalla == 5 || pantalla == 6)){
  pantalla = 1;
}
if((mouseX > xi[3]) && (mouseX< xi[3] + l[3]) && (mouseY > yi[3]) && (mouseY < yi[3] + a[3]) && (pantalla == 2 || pantalla == 5 || pantalla == 6)){
  pantalla = 3;
}
if((mouseX > xi[4]) && (mouseX< xi[4] + l[4]) && (mouseY > yi[4]) && (mouseY < yi[4] + a[4]) && (pantalla == 1)){
  pantalla = 4;
}
}

void mouseClicked(){
  float d = dist(mouseX, mouseY, posX, posY);
  int r = 100;
    if(d<r){
     Atajaste();
    } 
}

void Atajaste(){
counter++;
}

void Atajadas(int PosX,int PosY){
  fill(0,255,0);
  textSize(50);
  text(counter,PosX,PosY);
}
 void Ganaste(){
   if(counter>=5){
    pantalla=5; 
   }
 }
 
 void Perdiste(){
   if(frameCount>=780){
    pantalla=6; 
   }
 }
