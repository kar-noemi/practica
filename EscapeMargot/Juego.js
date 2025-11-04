class Juego{
constructor(){
this.ropero= new ropero;
this.margot= new margot();
this.obstaculos=[];
this.cantObstaculos=100;

}

iniciarJuego(){
  for(let i=0; i<this.cantObstaculos; i++){
    let posX= randon (0,width);
    let posY= randon (-100, -100000);
    this.obstaculos [i]= new obstaculos (posX, posY);
}
dibujar(){
  this.dibujarObstaculo();
  this.ropero.dibujar();
this.dibujarVidasCajasRopa()
this.controlColisión();
this.margot.dibujar();
}

ganarJuego(){
}
tiempoDeJuego(){
}
dibujarVidasCajasRopa()
