//VARIABLE
PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen10;
PFont fuente;
int String;
String texto1, texto2, texto3, texto4, texto5, texto6, texto7, texto8, texto9, texto10;
int pantalla;
int LoadFont;
int Loadimage;
int tiempo=5;
int text;
int miVariable;


void setup() {
  size(640, 480);
  tiempo = 5;
  miVariable = frameCount;
  println (miVariable);
  fuente= loadFont ("Constantia.vlw");
  textAlign (CENTER, TOP);
  String = text;
  imagen1= loadImage ("imagen1.PNG");
  imagen2= loadImage ("imagen2.png");
  imagen3= loadImage ("imagen3.png");
  imagen4= loadImage ("imagen4.png");
  imagen5= loadImage ("imagen5.png");
  imagen6= loadImage ("imagen6.png");
  imagen7= loadImage ("imagen7.jpeg");
  imagen8= loadImage ("imagen8.png");
  imagen9= loadImage ("imagen9.png");
  imagen10= loadImage ("imagen10.png");
  

  tiempo= 5;

}

void draw() {
  background (255);  
 
  if(frameCount % 180 == 0 ) {
    pantalla ++;
  }
  if ( pantalla ==1) {
  
    push ();
    {
      image (imagen1, 0, 0, width, height);
      tiempo=5;
      miVariable=frameCount;
      println (miVariable);
      textSize (30);
      textAlign (CENTER, TOP);
      fill (255);
      text ("Alumna: Karen Quevedo LEGAJO: 119120/9 \n Materia: Programación 1 com.4 \n Profesor: Leo Garay \n Tema: ANIME.\n Serie: The Rising of The Shield Hero \n FRASE DESTACADA: Todos tenemos un \n heroe dentro", 620,150,-miVariable, 350);
      
  pop(); 
  }
  }
 if (pantalla==2) {
  
    push(); {
      image (imagen2, 0, 0, width, height);
       tiempo=5;
       miVariable=frameCount;
      println (miVariable);
      textSize (30);
      textAlign (CENTER, TOP);
      fill (255,0,0);
      text ("Naofumi, el personaje principal, \n es atrapado por un libro mágico, \n que cuenta la historia de cuatro heroes: \n El del arco, El de la Espada,\n El de la lanza y el del escudo,\n este último resultó ser él", 320, miVariable/2);
      pop ();
    }
  }
  if (pantalla == 3) {
  
    push();
    {
      image (imagen3, 0, 0, width, height);
       tiempo=5;
       miVariable=frameCount;
      println (miVariable);
      textSize (25);
      textAlign (CENTER, TOP);
      fill (255,0,0);
      text ("Los cuatro heroes convocados de \n otros mundos  por el rey de \n otro mundo, para que los ayudaran,\n puesto que eran invadidos\n por oleadas de monstruos \n que los atacan, destruyen y matan.  \n Un reloj les avisa el \n momento de cada oleada", miVariable/2, 120);

      pop();
    }
  }
  if (pantalla == 4) {
    
    push();
    {
      image (imagen4, 0, 0, width, height);
       tiempo=5;
     miVariable=frameCount;
      println (miVariable);
      textSize (25);
      textAlign (CENTER, TOP);
      fill (255,0,0);
      text ("Naofumi, es divulgado por la hija del rey,\n MYNE, falsamente.  Tiene que continuar \n con desventaja sin presupuesto y con una falsa \n y mala reputación. Entrena venciendo mostruos, \n adquiriendo conocimientos, reune aliados, \n su escudo adquiere distintas caraterísticas \n y él gana habilidades",620,150,-miVariable, 350);

      pop();
    }
  }
   if (pantalla == 5) {
    
    push();
    {
      image (imagen5, 0, 0, width, height);
       tiempo=5;
    miVariable=frameCount;
      println (miVariable);
      textSize (25);
      textAlign (RIGHT, TOP);
      fill (2,0,255);
      text ("Con la llegada de la nueva oleada de monstruos, \n defiende uno de sus pueblos, se encuentra \n con traiciones pero también gana aliados, \n termina salvando al pueblo",50,50,320, miVariable/2);
      pop ();
    }
 }
 
  if (pantalla == 6) {

 push (); {
   image (imagen6,0,0,width,height);
    tiempo=5;
    miVariable=frameCount;
   println (miVariable);
   textSize (25);
   textAlign (RIGHT, TOP);
   fill (100,100,255);
   text ("MYNE, una de sus principales enemigas, \n planea cosas en su contra, puesto que era hija \n del rey y quería heredar el reino a toda costa. \n Obstaculos que va superando",50,50,520, miVariable/2);
 pop (); 
  }
}

 if (pantalla == 7) {

 push (); {
   image (imagen7,0,0,width,height);
    tiempo=5;
    miVariable=frameCount;
   println (miVariable);
   textSize (30);
   textAlign (CENTER, TOP);
   fill (255,0,0);
   text ("Continuando su travesía,\n pasa por los pueblos \n defendidos por los otros\n heroes. Se da \ncuenta que no \n fueron ayudados debidamente \n y sus habitantes quedaron \n en malas condiciones, \n comienza a reparar esos daños",320, miVariable/4);
 pop (); 
  }
}

 if (pantalla == 8) {

 push (); {
   image (imagen8,0,0,width,height);
    tiempo=5;
 miVariable=frameCount;
   println (miVariable);
   textSize (25);
   textAlign (CENTER, TOP);
   fill (0,0,255);
   text ("Se van dando cuenta que las oleadas \n son reiteradas y \n en distintos pueblos.  \n Apesar de distintas oposiciones continua \n en su lucha para ayudar a \n otros juntos a sus aliados",320, miVariable/4);
 pop (); 
  }
}
if (pantalla == 9) {

 push (); {
   image (imagen9,0,0,width,height);
    tiempo=5;
 miVariable=frameCount;
   println (miVariable);
   textSize (30);
   textAlign (CENTER, TOP);
   fill (255);
   text ("Es convocado por la reina madre, \n quien lo ayuda a demostrar su\n inocencia  y deciden destituir\n al rey y su hija Myne",320, miVariable/4);
 pop (); 
  }
}
 if (pantalla == 10) {

 push (); {
   image (imagen10,0,0,width,height);
    tiempo=5;
   miVariable=frameCount;
   println (miVariable);
   textSize (20);
   textAlign (LEFT, TOP);
   fill (255,0,0);
   text ("El tiempo de las oleadas se terminan,\n habiéndo sido el heroe \n del escudo el mejor, \npuesto que se mostró humano, \n luchador y solidario. \n Muchos de sus aliados resultó ser gente importante \n que él sin saber los habia ayudado",50,50,320, miVariable/4);
 pop ();}
  }
}
void mouseClicked() {
  pantalla++;
  if (pantalla>10){
    pantalla = 0;
}
}

  
