package practica1;

import java.util.ArrayList;

public class FactoriaMontana implements FactoriaCarreraYBicicleta {

    public FactoriaMontana() {
    }
    
        @Override
    public CarreraMontana crearCarrera( int numBicicletas) {
        ArrayList<BicicletaMontana> participantes = new ArrayList<>();
        boolean retirarse = false;
        
        for (int i=0; i<numBicicletas; i++){
            
            if (i%6==0)
                retirarse = true;
            else
                retirarse = false;
            
            participantes.add(crearBicicleta(i, retirarse));
        }
            CarreraMontana carreraCreada = new CarreraMontana(participantes);
            
            return carreraCreada;
    }

    @Override
    public BicicletaMontana crearBicicleta(int numBicicleta, boolean retirarse) {
            BicicletaMontana bicicletaCreada = new BicicletaMontana(numBicicleta,retirarse);
            return bicicletaCreada;
    }

}