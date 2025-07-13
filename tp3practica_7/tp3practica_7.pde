int tam;
PImage cuadrados;

void setup(){
size (800,400);
tam=20;
cuadrados = loadImage ("cuadrados.png");
}

void draw(){
  background( 255 );
 image (cuadrados, 0, 0, 400, 400);
  /*verde*/
  movimientoDeColor(400,0);
  movimientoDeColor (600,0);
  movimientoDeColor (400,200);
  movimientoDeColor (600,200);
  
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (20,60,20);}
else if (i==1 || y==1||i==8 ||y==8){
fill (20,110,20);}
else if (i==2 || y==2||i==7 ||y==7){
fill (10,160,10);}
else if (i==3 || y==3||i==6 ||y==6){
fill (10,200,10);}
else{
fill(10,250,0);}
rect(400+tam*i,tam*y, tam,tam);
}}
/*rojo*/
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (60,20,20);}
else if (i==1 || y==1||i==8 ||y==8){
fill (150,20,20);}
else if (i==2 || y==2||i==7 ||y==7){
fill (200,30,30);}
else if (i==3 || y==3||i==6 ||y==6){
fill (260,0,0);}
else{
fill(250,180,180);}
rect(600+tam*i,tam*y, tam,tam);
}}
/*marron*/
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (102,51,0);}
else if (i==1 || y==1||i==8 ||y==8){
fill (115,70,10);}
else if (i==2 || y==2||i==7 ||y==7){
fill (128,95,43);}
else if (i==3 || y==3||i==6 ||y==6){
fill (170,136,72);}
else{
fill(219,183,107);}
rect(400+tam*i,200+tam*y, tam,tam);
}}
/*azul*/
for (int i=0; i<10; i++){
for (int y =0; y < 10;y++){
if (i==0|| y==0 || i==9 ||y==9){
fill (20,20,100);}
else if (i==1 || y==1||i==8 ||y==8){
fill (50,50,130);}
else if (i==2 || y==2||i==7 ||y==7){
fill (0,0,250);}
else if (i==3 || y==3||i==6 ||y==6){
fill (70,70,250);}
else{
fill(180,180,255);}
rect(600+tam*i,200+tam*y, tam,tam);
}}}

void movimientoDeColor (int posX, int posY){
  for (int i=0; i<10; i++){
  for (int y =0; y < 10;y++){
    dibujarCuadrado(i,y, posX, posY);    
  
}
  }
}
void dibujarCuadrado (int i, int y, int posX, int posY){
  float r = dist (mouseX, mouseY, i * tam, y*tam);
  if (mouseDentroDeCuadrado(i,y, posX, posY)) {
    noFill ();
  } else {
    fill (r,0,0);
  }
  rect(posX +tam*i, posY+ tam*y, tam, tam);
}

boolean mouseDentroDeCuadrado (int i, int y, int posX, int posY) {
  boolean retorno = 
  mouseX > posX + i* tam &&
  mouseX < posX + i*tam + tam &&
  mouseY >posY + y *tam &&
  mouseY <posY + y *tam + tam;
  return retorno;
}
