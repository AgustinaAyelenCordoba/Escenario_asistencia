public class Superficie{
  public PVector posicionC;
  public int ancho;
  public int alto;
   public color relleno;
  
  public Superficie(PVector pos,int a,int al,color rel){
    this.posicionC=pos;
    this.ancho=a;
    this.alto=al;
    this.relleno=rel;
  }
  
  public void display(){
    for(float i=this.posicionC.x;i<width;i+=ancho){
      for(float j=this.posicionC.y;j<height;j+=alto){
        fill(relleno);
        rect(i,j,ancho,alto);
      }
    }
  }
   
}
