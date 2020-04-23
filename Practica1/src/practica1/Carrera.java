package practica1;
import java.util.*;

public abstract class Carrera {
    
        protected int numBicicletas;
        protected ArrayList<Bicicleta> bicicletas;
        
        Carrera(){
            bicicletas = new ArrayList<>();
        }
        
        public void empezar(){
            
            System.out.println("Comienza la carrera");
            for (int i=0; i<bicicletas.size(); i++){
                bicicletas.get(i).start();
            }
            
            try {
                Thread.sleep(61000);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return;
            }
        }

        
}