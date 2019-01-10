class Dog
  attr_accessor :nombre, :raza, :color
  def initialize(propiedades)
    @nombre = propiedades[:nombre]
    @raza = propiedades[:raza]
    @color = propiedades[:color]
  end
  def ladrar
    puts "#{@nombre} está ladrando"
  end
end
dog1 = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
newdog = Dog.new(dog1)
newdog.ladrar
