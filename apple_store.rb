class AppleStore
  # attr_accessor :make, :model, :price, :height, :width, :weight, :unit
  require_relative 'gadget1'
  @@n=0

  def initialize
    @productsold =[]


  end

  def to_s
    "hahah #{ product_sold.size}   revenue earned #{ revenue_earned}"
  end


  def createGadget (make, model, price, height, weight, width, unit)

    # AppleStore.new(@make, @model, @price, @height, @weight, @width = make, model, price, height, weight, width)
    @productsold<<ipod=Gadget1.new(make, model, price, height, weight, width, unit)
    puts("here is your ipod!!#{ipod.make}")
    puts "A $#{ipod.price} #{ipod.model } weighing #{ipod.weight} #{ipod.unit}"
    product_sold
    revenue_earned
    @@n += 1
    puts "Number of points created: #@@n"

  end

  puts "??????????????????created: #@@n"

  def product_sold
# later we'll see how to use inject to sum a collection
    @sum = 0.0
    @productsold.each do |x|
      p @sum += 1
    end
  end

  def revenue_earned
    total_rev = 0.0
    @productsold.each { |rev| total_rev += rev.price }
    p total_rev

  end
  # @model, @price, @height, @weight, @width,@unit
end
# gadget.rb = Struct.new(:make, :model, :price, :height, :width, :weight, :unit) do
#   @make, @model, @price, @height, @weight, @width,@unit=make, model, price, height, weight, width, unit
# end
# pod=AppleStore.new
# ipod=pod.createGadget( :Apple, :iPodShuffle, 49, 1.14, 1.24, 0.44, :ounces)


p a = AppleStore.new()
p ipod = a.createGadget(:Apple, :iPodShuffle, 49, 1.14, 1.24, 0.44, :ounces)

macmini = a.createGadget(:Apple, :MacMini, 599, 1.4, 7.7, 2.7, :pounds)
puts a