require_relative "FactoriaCarretera.rb"
require_relative "FactoriaMontana.rb"

public
class Cliente

	public
  
  def self.main()
    puts "Elige el numero de participantes para la carrera en carretera:"
        
    numBicicletas = gets.to_i
        
    fcarretera = FactoriaCarretera.new
    fmontana = FactoriaMontana.new
        
    carreraC = fcarretera.crearCarrera(numBicicletas)
    carreraC.empezar
        
    puts "Elige el numero de participantes para la carrera en montana:"
        
    numBicicletas = gets.to_i

    carreraM = fmontana.crearCarrera(numBicicletas)
    carreraM.empezar
    
    return(0)
  end
  
	def initialize()

	end
end

Cliente.main()

