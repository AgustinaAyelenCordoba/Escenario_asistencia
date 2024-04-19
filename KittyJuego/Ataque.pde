public class Ataque{
  public PVector posicion;
  public PVector velocidad;
  public PImage bala;
//creacion del constructor
  public Ataque(PVector posi,PVector velocidad,String cora ){
    this.posicion=posi;
    this.velocidad=velocidad;
    this.bala=loadImage(cora);
  }
//creacion del metodo
  public void display(){
     imageMode(CENTER);//centra la imagen
      image(bala,this.posicion.x,this.posicion.y,40,40);
      imageMode(CENTER);//centra la imagen
      image(bala,this.posicion.x,this.posicion.y,40,40);    
  }

  public void movimiento(){
    this.posicion.y+=this.velocidad.y;
  }
}
