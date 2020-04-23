public
class Bicicleta

	public

	def initialize()
		@idBicicleta
		@retirarse
	end
  
  def correr()
    puts "(+)Comienza la bicicleta #{@idBicicleta}"
    sleep(5)
    if (@retirarse)
      puts "(-)La bicicleta #{@idBicicleta} se retira"
    else
      sleep(5)
      puts "(END)La bicicleta #{@idBicicleta} ha llegado"
    end
  end
  
  def clone()
    
  end
  
end
