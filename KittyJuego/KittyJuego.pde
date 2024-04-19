ArrayList<Ataque>ataqueKitty;
Hada hada1;
Escenario ambiente;
Enemigo antagonista;  
Superficie bloque;
void setup(){
  size(800,600);
  ambiente =new Escenario(new PVector(width/2,height/2));
  hada1=new Hada();
  hada1.setPosicion(new PVector(width/2,height-100));
  hada1.setVelocidad(new PVector(20,0));
  antagonista=new Enemigo();
  antagonista.setUbicacion(new PVector(width/2,80));
  antagonista.setVelocidad(new PVector(30,0));
  ataqueKitty=new ArrayList<Ataque>();
  bloque=new Superficie (new PVector (0,height-60),60,20,#F5A6EC);
  }
void draw(){
  ambiente.display();
  antagonista.display();
  antagonista.movimiento();
  antagonista.ataque();
  for(int i=ataqueKitty.size()-1;i>0;i--){
    Ataque atq=ataqueKitty.get(i);
    if(atq.posicion.y>height||atq.posicion.y<0){
    ataqueKitty.remove(i);
    }
    atq.display();
    atq.movimiento();
  }
  bloque.display();
  hada1.display();
}
void keyPressed(){


}
void mousePressed(){
ataqueKitty.add(new Ataque(new PVector (hada1.getPosicion().x,hada1.getPosicion().y),new PVector(0,-20),"Corazon.png"));

}
