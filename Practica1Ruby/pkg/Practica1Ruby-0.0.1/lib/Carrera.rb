public
class Carrera

	public
	def empezar() 
    puts "Comienza la carrera"
    for i in @bicicletas
      i.correr
    end
	end

	def initialize()
		@bicicletas
		@numBicicletas
	end
  
  def clone()
    
  end

end
