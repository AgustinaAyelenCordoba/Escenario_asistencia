public class Escenario{
  public PVector coordenada;
  public PImage fondo;
//creacion del constructor
  public Escenario(PVector coordenada){
    this.coordenada=coordenada;
}
//creacion del metodo
  public void display(){
    fondo=loadImage("fondo1.png");
    imageMode(CENTER);//centra la imagen
    image(fondo,this.coordenada.x,this.coordenada.y,width,height);
      tint(255, 126);
  
  }

}
