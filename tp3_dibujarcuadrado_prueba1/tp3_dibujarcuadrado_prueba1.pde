int tam;
PImage cuadrados;
color color1=(20,60,20), color2=(20,110,20), color3= (10,160,10), color4=(10,200,10), color5=(10,250,0),
color6=(60,20,20), color7=(150,20,20), color8=(200,30,30), color9=(260,0,0), color10=(250,180,180),
color11=(102,51,0), color12(115,70,10), color13=(128,95,43), color14=(170,136,72), color15=(219,183,107), 
color16=(20,20,100), color17=(50,50,130), color18=(0,0,250), color19=(70,70,250), color20=(180,180,255);

void setup() {
  size( 800, 400 );
  tam = 20;
  cuadrados= loadImage ("cuadrados.png");
 
}

void draw() {
  background( 255 );
  image (cuadrados, 0, 0, 400, 400);
  dibujandrocuadrado(400,0);
  dibujandrocuadrado(600,0);
  dibujandrocuadrado(400,200);
  dibujandrocuadrado(600,200);
}
}
