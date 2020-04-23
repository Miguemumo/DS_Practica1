require('./Bicicleta.rb');

public
class BicicletaCarretera < Bicicleta
  @@contadorBicicletas = 0
  
	public
	def initialize(idBicicleta, retirarse)
		@idBicicleta = idBicicleta
    @retirarse = retirarse
	end

	def clone()
    @@contadorBicicletas = @@contadorBicicletas + 1
    return BicicletaCarretera.new(@idBicicleta + @@contadorBicicletas, @retirarse)
  end
  
  def retirarse=(retirarse)
    @retirarse = retirarse
  end
  
end
