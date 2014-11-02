class Iphone6 < Gadget
  def initialize
    @make, @model, @price, @height, @weight, @width,@unit= "iPhone", 6, 199.00, 5.44, 4.55, 2.64, "ounces"
  end
  def to_s
    "here is your:  #{@make}, #{@model}, #{@price}, #{@height}, #{@weight}, #{@width},#{@unit}"
  end
end