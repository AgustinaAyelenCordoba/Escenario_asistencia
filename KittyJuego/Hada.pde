public class Hada{
  private PVector posicion;
  private PVector velocidad;
  public PImage kitty;
  public PImage kittyLado;

  public Hada(){
  }
  
  //creacion del set y get
 public void setPosicion(PVector pos){
 this.posicion=pos;
} 
public PVector getPosicion(){
return this.posicion;
}
 public void setVelocidad(PVector vel){
 this.velocidad=vel;
 }  
 
 //creacion de los metodos
  public void display(){
    noTint();
    kitty=loadImage("hada kitty.png"); //cargar imagen
    kittyLado=loadImage("lado.png");
    if(key=='a'||key== 'A'){
      this.posicion.x-=this.velocidad.x;
      imageMode(CENTER);//centra la imagen
      image(kitty,this.posicion.x,this.posicion.y,80,80);
    }else if(key=='d'||key=='D'){
      this.posicion.x+=this.velocidad.x;
      imageMode(CENTER);//centra la imagen
      image(kittyLado,this.posicion.x,this.posicion.y,80,80);
    }else{
      imageMode(CENTER);//centra la imagen
      image(kitty,this.posicion.x,this.posicion.y,80,80);
      }
    }
}
