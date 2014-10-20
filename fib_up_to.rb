class Dawit
def fib_up_to(max)
  i1, i2 = 1, 1
# parallel assignment (i1 = 1 and i2 = 1)
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end



end
dawit=Dawit.new
puts dawit.fib_up_to(10) {|f| print f, " " }