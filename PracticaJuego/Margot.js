class Margot {
constructor(){
this.posX=width/2;
this.posY=300;
this.color(255,100,0);
this.velocidad=10;
this.vida=3,
  }
dibujar(){
fill(this.color);
rect(this.posX, this.posY, 30,40);

}
quitarVida(){
}

}
teclaPresionada(){
  if(keyCode===LEFT_ARROW){
    this.posX=this.posX-10;
  }else if(keyCode===RIGTH_ARROW){
    this.posX=this.posX+10;
  }}}
    
