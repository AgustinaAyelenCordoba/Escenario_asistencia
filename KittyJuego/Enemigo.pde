public class Enemigo{
  private PVector ubicacion;
  private PVector velocidad;
  public PImage fantasma;
  //creacion del constructor
   public Enemigo(){
 } 
 public void setUbicacion(PVector ubi){
  this.ubicacion=ubi; 
 }
 public PVector getUbicacion(){
 return this.ubicacion;
 }
public void setVelocidad(PVector velo){
this.velocidad=velo;
} 
 public PVector getVelocidad(){
 return this.velocidad;
 }
 
  //creacion del metodo 
    public void display(){
       fantasma=loadImage("kitty enemiga.png");//cargar imagen
       imageMode(CENTER);//centra la imagen
        image(fantasma,this.ubicacion.x,this.ubicacion.y,80,80);
  }
  
    public void movimiento(){
     this.ubicacion.x +=this.velocidad.x;
      if(this.ubicacion.x<0||this.ubicacion.x>width){
       this.velocidad.x*=-1;
      }
    }
  public void ataque(){
      if( frameCount % 5 == 0  ){
       ataqueKitty.add(new Ataque(new PVector(this.ubicacion.x,this.ubicacion.y),new PVector(0,40),"cupcakes.png"));  
 
     }
  }
}
