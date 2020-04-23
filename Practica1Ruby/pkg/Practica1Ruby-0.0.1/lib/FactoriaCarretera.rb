require('./CarreraCarretera.rb');
require('./BicicletaCarretera.rb');
require('./FactoriaCarreraYBicicleta.rb');

public
class FactoriaCarretera < FactoriaCarreraYBicicleta

	public
	def crearCarrera(numBicicletas)
		participantes = Array.new
    
    bicicleta = BicicletaCarretera.new(0,false)
    
        
    for i in (0..numBicicletas-1)
      bicicleta_aniadir = crearBicicleta(bicicleta) 
      if (i%11==0)
        bicicleta_aniadir.retirarse = true
      else
        bicicleta_aniadir.retirarse = false
      end
      participantes << bicicleta_aniadir
    end
    carreraCreada = CarreraCarretera.new(participantes)
    return carreraCreada
	end

	def crearBicicleta(bicicleta)
		return bicicleta.clone
	end

  public
	def initialize()
    
	end
  
  public_class_method :new
  
end

