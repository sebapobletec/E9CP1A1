class Product
  attr_accessor :name, :large, :medium, :small, :xsmall
  def initialize(name, large, medium, small, xsmall)
    @name = name
    @large = large.to_i
    @medium = medium.to_i
    @small = small.to_i
    @xsmall = xsmall.to_i
  end

  def average_price
     (self.large.to_i + self.medium + self.small + self.xsmall)/4
  end

end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

puts products_list
print "El precio promedio de #{products_list[0].name} es #{products_list[0].average_price}." 
