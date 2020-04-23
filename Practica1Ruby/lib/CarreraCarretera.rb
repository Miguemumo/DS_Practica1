require('./Carrera.rb');

public
class CarreraCarretera < Carrera

	public
	def initialize(bicicletas)
		@bicicletas = bicicletas
    @numBicicletas = bicicletas.size
	end

  def clone()
    return CarreraCarretera.new(@bicicletas)
	end
end
