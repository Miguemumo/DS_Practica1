package practica1;
import java.util.Scanner;

public class cliente {
    
    public static void main(String[] args) {
        int numBicicletas;
        Scanner in;
        
        System.out.println("Elige el número de participantes para la carrera en carretera:");
        
        do {
            in = new Scanner(System.in);
        }while (!in.hasNextInt());
        
        numBicicletas = in.nextInt();
        
        FactoriaCarretera fcarretera = new FactoriaCarretera();
        FactoriaMontana fmontana = new FactoriaMontana();
        
        Carrera carreraC = fcarretera.crearCarrera(numBicicletas);
        carreraC.empezar();
        
        System.out.println("Elige el número de participantes para la carrera en montana:");
        
        do {
            in = new Scanner(System.in);
        }while (!in.hasNextInt());
        
        numBicicletas = in.nextInt();

        Carrera carreraM = fmontana.crearCarrera(numBicicletas);
        carreraM.empezar();
    }
    
}