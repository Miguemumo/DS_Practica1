package practica1;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Random;

public abstract class Bicicleta extends Thread{

    int idBicicleta;
    boolean retirarse;
    
    @Override
    public void run(){
        Random r = new Random();
        System.out.println("(+)Comienza la bicicleta " + idBicicleta);
        try {
            sleep(30000);
        } catch (InterruptedException ex) {
            Logger.getLogger(Bicicleta.class.getName()).log(Level.SEVERE, null, ex);
        }
        if (retirarse){
            System.out.println("(-)La bicicleta " + idBicicleta + " se retira");
        }else{
            try {
                sleep(30000);
            } catch (InterruptedException ex) {
                Logger.getLogger(Bicicleta.class.getName()).log(Level.SEVERE, null, ex);
            }
             System.out.println("(END)La bicicleta " + idBicicleta + " ha llegado");
        }

        
    }
    
    

}