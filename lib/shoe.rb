class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  ALL = []
  BRANDS = []

  def initialize(brand)
    @brand = brand

    BRANDS << @brand if !BRANDS.include?(@brand)

    ALL << self
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def self.brands
    BRANDS
  end
end

sandal = Shoe.new("adidas")
puts Shoe.brands
