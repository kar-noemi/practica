int tam;
int cuadrados;
int cant;


function preload (){
cuadrados = loadImage ('data/cuadrados.png');
}

function setup() {
createCanvas (800,400);
tam= cant;
cant=20;


}


function draw() {
 background( 255 );
 image (cuadrados, 0, 0, 400, 400);
  /*verde*/
 /* movimientoDeColor(400,0);
  movimientoDeColor (600,0);
  movimientoDeColor (400,200);
  movimientoDeColor (600,200);*/
 
  tam = cant;
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

}
void mouseDragged () {

dibujarMovimiento(400, 0, color(0,255,0));   // Verde 
dibujarMovimiento(600, 0, color(255,0,0));   // Rojo 
dibujarMovimiento(400, 200, color(150,75,0)); // Marrón 
  dibujarMovimiento(600, 200, color(0,0,255));  // Azul 
}

void dibujarMovimiento(int posX, int posY, color baseColor){
  for (int i = 0; i < 10; i++) {
    for (int y = 0; y < 10; y++) {
      float d = CalcularDistancia(posX + i * tam, posY + y * tam);
      color c = movimientoDelMouse(baseColor, d);
      fill(c);
      rect(posX + i * tam, posY + y * tam, tam, tam);
    }
  }
}

// Calcula la distancia del mouse a un punto del dibujo
float CalcularDistancia(float x, float y) {
  return dist(mouseX, mouseY, x, y);
}

// Devuelve un color con transparencia u oscurecimiento según la distancia
color movimientoDelMouse(color base, float distancia) {
  float alpha = map(distancia, 0, 400, 255, 50);
  return color(red(base), green(base), blue(base), alpha);
}


void keyPressed (){
  cant = 20;
}

void mousePressed () {
  cant++;
}
  
