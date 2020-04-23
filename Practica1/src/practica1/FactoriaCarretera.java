package practica1;

import java.util.ArrayList;

public class FactoriaCarretera implements FactoriaCarreraYBicicleta {


    public FactoriaCarretera() {
    }
        
        
    
    @Override
    public CarreraCarretera crearCarrera( int numBicicletas) {
        ArrayList<BicicletaCarretera> participantes = new ArrayList<>();
        boolean retirarse = false;
        
        for (int i=0; i<numBicicletas; i++){
            
            if (i%11==0)
                retirarse = true;
            else
                retirarse = false;
            
            participantes.add(crearBicicleta(i,retirarse));
        }
            CarreraCarretera carreraCreada = new CarreraCarretera(participantes);
            
            return carreraCreada;
    }

    @Override
    public BicicletaCarretera crearBicicleta(int numBicicleta, boolean retirarse) {
            BicicletaCarretera bicicletaCreada = new BicicletaCarretera(numBicicleta, retirarse);
            return bicicletaCreada;
    }

}