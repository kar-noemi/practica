int tam;
PImage cuadrados;
int cant = 10;

void setup() {
  size( 800, 400 );
  tam = width / 4;
  cuadrados= loadImage ("cuadrados.png");
 strokeWeight (10);
 
}

void draw() {
  background( 255 );
  image (cuadrados, 0, 0, 400, 400);
  dibujarDegradee ();{
}
  
  /* cuadrado 4 */
  for ( int x = 0; x < 10; x += 1) {
    for ( int y = 0; y < 10; y += 1) {
      if ((x + y)%4==0) {
        fill (110, 150, 100);//verde//      
      }  else if ((x + y)%4==1) {
        fill(255, 0, 0); //rojo//
      } else if ((x + y)%4==2) {
        fill(100, 20, 280);//azul//
      } else {    
        fill(130, 90, 70);//marron
      }
     
      rect( 400+x*tam, y*tam, tam, tam );
    }
  }
}
void dibujarDegradee (){
  for ( int x = 0; x < 10; x += 1) {
    for ( int y = 0; y < 10; y += 1) {
      dibujarCuadrado (x,y);
    }
  }
}

void dibujarCuadrado (int x, int y) {
    if ((x + y)%4==0) {
      stroke (0, map (x, 0, cant, 0, 255));
        fill (110, 150, 100);//verde//      
      }  else if ((x + y)%4==1) {
        stroke (0, map (x, 0, cant, 255,0));
        fill(255, 0, 0); //rojo//
      } else if ((x + y)%4==2) {
        stroke (0, map (x, 255, cant, 0,0));
        fill(100, 20, 280);//azul//
      } else {   
        stroke (0, map (x, 0, cant, 255,0));
        fill(130, 90, 70);//marron
      }
     
      rect( 400+x*tam, y*tam, tam, tam );
    }  


void mouseDragged () {
  if (mousePressed) {
   for ( int x = 0; x < 10; x += 1) {
    for ( int y = 0; y < 10; y += 1) {
      if ((x + y)%4==0) {        
        fill ((random (x+y)), 255,0,200);//verde//       
      }  else if ((x + y)%4==1) { 
        fill((random (x+y)),255,255,255); //rojo//
      } else if ((x + y)%4==2) {
        fill((random (x+y)),0,255,255);//azul//    
      } else {   
        fill((random (x+y)),255,255,255);//marron   
      }
   
      rect(400+x*tam,y*tam, tam, tam );
    }
  }
}
}
