class Iphone5s < Gadget
  def initialize
    @make, @model, @price, @height, @weight, @width,@unit= "iPhone", "5S", 99.00, 4.87, 3.95, 2.31, "ounces"
  end
  def to_s
    "here is your:  #{@make}, #{@model}, #{@price}, #{@height}, #{@weight}, #{@width},#{@unit}"
  end
end