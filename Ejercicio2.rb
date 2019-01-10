class Car
  attr_accessor :model
  attr_accessor :year
  def initialize(model,year)
    @model = model
    @year = year
  end
end

car = Car.new('Camaro', 2016)
puts "Mi auto favorito es un #{car.model} del año #{car.year}!"
