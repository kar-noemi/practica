/*sería como el ejemplo jugador, del video del juego de autos, aquí
podemos elaborar las ideas de los obstaculos en general (ropa y caja)*/
class Obstaculo{
constructor(posX, posY){
this.posX=posX;
this.posY=posY;
this.velocidad=3;
this.color=randon(255,0);
this.cantidad=10;
}
dibujar(){
  fill (this.color);
  rect (this.posX,this.posY,10,10);
this.mover();
}
mover(){
  this.posY=this.posY+this.velocidad;
}
}
