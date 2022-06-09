void Circulos(int posX1,int posX2){
   fill(125,125,125);
 noStroke();
 circle(posX1,250+posY,70);
 circle(posX2,250+posY,70);
 
}

void mouseClicked(){
 click+=25; 
}

void keyPressed(){
  posY = random(-210,210);
}
