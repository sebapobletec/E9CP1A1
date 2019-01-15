class Morseable
  attr_accessor :number
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    morse = { 0 => '-----', 1 => '.----', 2 => '..---', 3 => '...--', 4 => '....-', 5 => '.....', 6 =>'-....', 7 =>'--...', 8 => '---..', 9 => '----.'}
    morse[number]
  end

  def to_morse
    generate_hash(@number)
  end
end

m4 = Morseable.new(4)
puts m4.number
puts m4.to_morse
