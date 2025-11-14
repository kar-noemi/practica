let objPri;
let sonido;
let imagenFondo;

function preload(){
 sonido = loadSound ('data/musicaFondo.mp3');
  imagenFondo = loadImage ('data/fondo.jpg');
}

function setup() {
  createCanvas(640, 480);
  sonido.amp(0.2);
  sonido.loop();
  objPri = new Juego();
  
}

function draw() {
  background(220);
  image(imagenFondo,0,0)
  objPri.mostrar();
  
}
/* objPri.dibujar ();
  
  if (mouseIsPressed){ //en ejemplo de clase era (keyISPressed) supongo que es lo mismo, quize unificar con el evento del sonido
  objPri.reiniciar();
  
}
objPri.chocar();{
  
}*/

function keyPressed() {
  objPri.teclaPresionada(keyCode);
  
}
function mousePressed (){
 /* objPri.reiniciar();*/
  sonido.play();
}
