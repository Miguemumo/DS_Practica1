require('./CarreraMontana.rb');
require('./BicicletaMontana.rb');
require('./FactoriaCarreraYBicicleta.rb');

public
class FactoriaMontana < FactoriaCarreraYBicicleta

	public
	def crearCarrera(numBicicletas)
		participantes = Array.new
    
    bicicleta = BicicletaMontana.new(0,false)
    
        
    for i in (0..numBicicletas-1)
      bicicleta_aniadir = crearBicicleta(bicicleta) 
      if (i%6==0)
        bicicleta_aniadir.retirarse = true
      else
        bicicleta_aniadir.retirarse = false
      end
      participantes << bicicleta_aniadir
    end
    carreraCreada = CarreraMontana.new(participantes)
    return carreraCreada
	end

	def crearBicicleta(bicicleta)
		return bicicleta.clone
	end

	def initialize()
    super
	end
end
