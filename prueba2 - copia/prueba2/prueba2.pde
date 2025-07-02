int tam;
PImage cuadrados;
int cant = 4;
float d= 0;
int dist = 0;
void setup() {
  size( 800, 400 );
  tam = width / 4;
  cuadrados= loadImage ("cuadrados.png");
 strokeWeight (10);
rectMode (CORNER);
 
}

void draw() {
  background( 255 );
  image (cuadrados, 0, 0, 400, 400);
  
  /* cuadrado 4 */
  for ( int x = 0; x < 4; x += 1) {
    for ( int y = 0; y < 4; y += 1) {
      if ((x + y)%3==0) {    
        fill (110, 150, 100);//verde//      
      }  else if ((x + y)%3==1) {
        fill(255, 0, 0); //rojo//
      } else if ((x + y)%3==2) {
        fill(100, 20, 280);//azul//
      } else{    
        fill(130, 90, 70);//marron
      }
      
      rect( 400+x*tam, y*tam, tam, tam );
    
    }
  }
}
float calcularCuadrados (int x, int y){
 float distancia = dist (mouseX, mouseY, 400+x*tam + tam, y*tam +tam);
float color = map (distancia, 400+x*tam ,y*tam,0,255);
return color;
}

void mouseDragged () {
translate ( 600, 600);
 rotate (radians (frameCount));
   for ( int x = 0; x < 4; x += 1) {
    for ( int y = 0; y < 4; y += 1) {
      if ((x + y)%3==0) {        
        fill ((random (100+255)), 255,0,200);//verde//       
      }  else if ((x + y)%3==1) { 
        fill((random (100+255)),255,255,255); //rojo//
      } else if ((x + y)%3==2) {
        fill((random (100+255)),0,255,255);//azul//    
      } else {   
        fill((random (100+255)),255,255,255);//marron   
      }
   
      rect(400+x*tam,y*tam, tam, tam );
    }
  }
}
