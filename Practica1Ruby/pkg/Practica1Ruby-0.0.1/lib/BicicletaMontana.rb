require('./Bicicleta.rb');

public
class BicicletaMontana < Bicicleta
  @@contadorBicicletas = 0
  
	public
	def initialize(idBicicleta, retirarse)
		@idBicicleta = idBicicleta
    @retirarse = retirarse
	end

	def clone()
    @@contadorBicicletas = @@contadorBicicletas + 1;
    return BicicletaMontana.new(@idBicicleta + @@contadorBicicletas, @retirarse)
  end
  
  def retirarse=(retirarse)
    @retirarse = retirarse
  end
end
