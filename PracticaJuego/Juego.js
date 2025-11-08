class Juego{
constructor(){
this.ropero= new ropero;
this.margot= new margot();
this.obstaculosCajas=[];
this.cantObstaculosCajas=100;
this.obstaculosRopa=[];
this.cantObstaculosRopa=100;

}

iniciarJuego(){
  for(let i=0; i<this.cantObstaculosCajas; i++){
    let posX= randon (0,width);
    let posY= randon (-100, -100000);
    this.obstaculosCajas [i]= new obstaculosCajas (posX, posY);
 for(let i=0; i<this.cantObstaculosRopa; i++){
    let posX= randon (0,width);
    let posY= randon (-100, -100000);
    this.obstaculosRopa [i]= new obstaculosRopa (posX, posY);
}
dibujar(){
  this.dibujarObstaculo();
  this.ropero.dibujar();
this.agregarVidaRopa.dibujar();
this.QuitarVidaCajas.dibujar ();
this.controlColisión();
this.margot.dibujar();
}

ganarJuego(){
}
tiempoDeJuego(){
}
quitarVidasCajas (){
}
AgregarVidaRopa (){
 
