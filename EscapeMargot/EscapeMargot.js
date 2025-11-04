let juego=new juego();

function setup(){
createCanvas(400,400);
juego= new juego();
juego.iniciar();
}
function Draw (){
background(255);
juego.dibujar();
}
function keyPressed(){
juego.teclaPresionada();
}
