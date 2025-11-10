class Juego {
  constructor() {
    this.cantidadCajas = 12;
    this.cajas = [];
    this.margot = new Margot();
    this.cantCredito = 12;
    this.crédito = [];

    for (let i = 0; i < this.cantidadCajas; i++) {
      this.cajas[i] = new Caja(random(10, width - 10), -i * 50);
      
      for (let i = 0; i < this.cantidadCredito; i++) {
        let posX= random (0, width);
        let posY= random (-100, -10000);
      this.credito[i] = new Credito(posX,posY);
    }
  }

  mostrar() {
    for (let i = 0; i < this.cajas.length; i++) {
      this.cajas[i].mover();
      this.cajas[i].mostrar();
    for (let i = 0; i < this.creditos.length; i++) {
      this.creditos[i].moverCredito();
      this.creditos[i].dibujar();
    }
    }
    this.chocar();
    this.margot.mostrar();
  }

  chocar() {
    for (let i = 0; i < this.cajas.length; i++) {
      if (this.margot.x < this.cajas[i].x + this.cajas[i].w &&
          this.margot.x + this.margot.w > this.cajas[i].x &&
          this.margot.y < this.cajas[i].y + this.cajas[i].h &&
          this.margot.y + this.margot.h > this.cajas[i].y) {
        this.cajas[i].y = -this.cajas[i].h;          
        this.cajas[i].x = random(10, width - 10);    
        this.margot.vida.perder();    
          }
    }
  
        
  for (let i = 0; i < this.creditos.length; i++) {  
    if (dist (this.cantCredito[i].posX, this.cantCredito[i].posY, 
    this.margot.posX,this.margot.posY)<20) {
      this.margot.vida.aumentar();
      this.iniciar();
    }
      }
    
 
  teclaPresionada(keyCode) {
    this.margot.teclaPresionada(keyCode);
  }
}
