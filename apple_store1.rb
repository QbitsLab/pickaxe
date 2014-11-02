class AppleStore1
  require_relative 'gadget'
  require_relative 'iphone5s'
  require_relative 'iphone6'

  @@n=0

  def initialize
    @productsold =[]
  end

  def to_s
    "A store having sold #{ product_sold.size} product with revenue of $#{ revenue_earned} so far!"
  end

  def createGadget (make, model, price, height, weight, width, unit)
    ipod=Gadget.new(make, model, price, height, weight, width, unit)
    @productsold<<ipod
    product_sold
    revenue_earned
    puts("here is your #{ipod.model}:")
    @@n += 1
    "A $#{ipod.price} #{ipod.model } weighing #{ipod.weight} #{ipod.unit}"
  end

  def createiPhone type
    case type
      when :iPhone5s

        iphone=Iphone5s.new()

      when :iPhone6
        iphone = Iphone6.new

      when :iPhone6Plus
        iphone = Iphone6Plus.new
      else
        raise "Incorrect iphone type: #{type}"
    end

    @productsold<<iphone
    product_sold
    revenue_earned
    puts iphone
    @@n += 1
  end


  def product_sold
    @sum = 0.0
    @productsold.each do |x|
      @sum += 1
    end
  end

  def revenue_earned
    total_rev = 0.0
    @productsold.each { |rev| total_rev += rev.price }
    @total_rev=total_rev
  end
end
a = AppleStore1.new()
ipod = a.createGadget(:Apple, :iPodShuffle, 49, 1.14, 1.24, 0.44, :ounces)
puts ipod
puts a
macmini = a.createGadget(:Apple, :MacMini, 599, 1.4, 7.7, 2.7, :pounds)
puts macmini
puts a

iphone5s = (a.createiPhone(:iPhone5s))
iphone6 = (a.createiPhone(:iPhone6))
puts a