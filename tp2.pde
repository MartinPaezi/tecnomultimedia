// https://youtu.be/BA1Z2wmPB8w

int click =1;
boolean reinicioPrograma = false;
float posY;

void setup(){
 size(500,500);
 
}

void draw(){
 for(int i=1; i<500;i++){
  stroke(0+i/2,0+i/2,0+i/2);
   line(i,0,i,600);
 }
 
 Circulos(170-click,330+click);

if(click>132){
  reinicioPrograma = true;
  click=1;
  posY=0;
} else{ reinicioPrograma=false;
}

}
