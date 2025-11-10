let objPri;
let sonido;
let imagenFondo;

function preload(){
  /*sonido= loadSound ('data/musicaFondo.mp3');*/
  imagenFondo = loadImage ('data/fondo.jpg');
}

function setup() {
  createCanvas(640, 480);
  objPri = new Juego();
  
 /* sonido.amp(0.2);
  sonido.loop();*/
}

function draw() {
  background(220);
  image (imagenFondo,0,0);
  objPri.mostrar();
  
}


function keyPressed() {
  objPri.teclaPresionada(keyCode);
  /*sonido.play();*/
}
