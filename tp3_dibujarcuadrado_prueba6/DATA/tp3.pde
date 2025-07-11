/* https://youtu.be/krhXB4pfGVs*/
/* ALUMNA KAREN QUEVEDO, PROGRAMACIÓN 1, COM 5 */

int tam;
PImage cuadrados;
int cant = 8;

void setup() {
  size( 800, 400 );
  tam = width / 4;
  cuadrados= loadImage ("cuadrados.png");
  strokeWeight (8);
}

void draw() {
  background( 255 );
  image (cuadrados, 0, 0, 400, 400);
 dibujarCuadrados(cant);
 

  /* cuadrado 4 */
  for ( int x = 0; x < 8; x += 1) {
    for ( int y = 0; y < 8; y += 1) {
      if ((x + y)%3==0) {
        fill (110, 150, 100);//verde//
      } else if ((x + y)%3==1) {
        fill(255, 0, 0); //rojo//
      } else if ((x + y)%3==2) {
        fill(100, 20, 280);//azul//
      } else {
       
        fill(130, 90, 70);//marron
      }

      rect( 400+x*tam, y*tam, tam, tam );
    }
  }
}
void dibujarCuadrados(int cantidad) {
  for (int j=0; j<cantidad; j=j+1) {
    for (int i=0; i<cantidad; i=i+1) {      
      dibujarColor(i, j);
    }
  }
}

void dibujarColor(int i, int j) {
  float r = dist(mouseX, mouseY, i*tam, j*tam);
  fill(0,0,r);
  rect(400+i*tam, j*tam, tam, tam);
}

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
