int tam;
PImage cuadrados;


void setup() {
  size( 800, 400 );
  tam = 20;
  cuadrados= loadImage ("cuadrados.png");
 
}

void draw() {
  background( 255 );
  image (cuadrados, 0, 0, 400, 400);
  /*verde*/
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (#0C3407);}
else if (i==1 || y==1||i==8 ||y==8){
fill (#2E7627);}
else if (i==2 || y==2||i==7 ||y==7){
fill (#3D9335);}
else if (i==3 || y==3||i==6 ||y==6){
fill (#2BAF1B);}
else{
fill(#5EE852);}
rect(400+tam*i,tam*y, tam,tam);
}}
/*rojo*/
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (#791E0D);}
else if (i==1 || y==1||i==8 ||y==8){
fill (#CE2406);}
else if (i==2 || y==2||i==7 ||y==7){
fill (#FA3714);}
else if (i==3 || y==3||i==6 ||y==6){
fill (#FF8771);}
else{
fill(#FFAA9B);}
rect(600+tam*i,tam*y, tam,tam);
}}
/*marron*/
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (#643A01);}
else if (i==1 || y==1||i==8 ||y==8){
fill (#8E5203);}
else if (i==2 || y==2||i==7 ||y==7){
fill (#B26705);}
else if (i==3 || y==3||i==6 ||y==6){
fill (#ED9118);}
else{
fill(#FCAB40);}
rect(400+tam*i,200+tam*y, tam,tam);
}}
/*azul*/
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (#021650);}
else if (i==1 || y==1||i==8 ||y==8){
fill (#012489);}
else if (i==2 || y==2||i==7 ||y==7){
fill (#0433BC);}
else if (i==3 || y==3||i==6 ||y==6){
fill (#2253E0);}
else{
fill(#668CF7);}
rect(600+tam*i,200+tam*y, tam,tam);
}}}

void mouseDragged() {

 
 translate ( 600, 600);
 rotate (radians (frameCount));
  for ( int x = 0; x < 4; x += 1) {
    for ( int y = 0; y < 4; y += 1) {
      if ((x + y)%3==0) {
        fill ((random (100+255)), 255, 0, 200);//verde//
      } else if ((x + y)%3==1) {
        fill((random (100+255)), 255, 255, 255); //rojo//
      } else if ((x + y)%3==2) {
        fill((random (100+255)), 0, 255, 255);//azul//
      } else {
        fill((random (100+255)), 255, 255, 255);//marron
      }

      rect(400+x*tam, y*tam, tam, tam );
    }
  }
}
