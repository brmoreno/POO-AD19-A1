import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

Box2DProcessing box2d;
Caja una;
Limite uno;

void setup(){
  size(400,400);
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0,0);
  una = new Caja(200,200,100,50,color(255,0,0));
  uno = new Limite(200,0,400,20);
}
