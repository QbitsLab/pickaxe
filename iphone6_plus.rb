class Iphone6Plus < Gadget
  def initialize
    @make, @model, @price, @height, @weight, @width,@unit= "iPhone", "6Plus", 299.00, 6.22, 6.07, 3.06, "ounces"
  end
  def to_s
    "Here is your:  #{@make}, #{@model}, #{@price}, #{@height}, #{@weight}, #{@width},#{@unit}"
  end
end