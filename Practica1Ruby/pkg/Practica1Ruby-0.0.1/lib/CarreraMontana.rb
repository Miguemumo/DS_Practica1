require('./Carrera.rb');

public
class CarreraMontana < Carrera

	public
	def initialize(bicicletas)
		@bicicletas = bicicletas
    @numBicicletas = bicicletas.size
	end

  def clone()
    return CarreraMontana.new(@bicicletas)
	end
end
