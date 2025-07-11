int tam;
PImage cuadrados;
color c1= color(20,60,20); 
color c2= color(20,110,20); 
color c3= color(10,160,10); 
color c4=color(10,200,10); 
color c5=color(10,250,0);
color c6=color(60,20,20); 
color c7=color(150,20,20); 
color c8=color(200,30,30); 
color c9=color(260,0,0); 
color c10=color(250,180,180);
color c11=color(102,51,0); 
color c12=color(115,70,10); 
color c13=color(128,95,43); 
color c14=color(170,136,72); 
color c15=color(219,183,107); 
color c16=color(20,20,100); 
color c17=color(50,50,130); 
color c18=color(0,0,250); 
color c19=color(70,70,250); 
color c20=color(180,180,255);

void setup() {
  size( 800, 400 );
  tam = 20;
  cuadrados= loadImage ("cuadrados.png");
}

void draw() {
  background( 255 );
  image (cuadrados, 0, 0, 400, 400);
  dibujarCuadrado(400,0);
  dibujarCuadrado(600,0);
  dibujarCuadrado(400,200);
  dibujarCuadrado(600,200);
}
