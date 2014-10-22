#!/usr/bin/ruby
a=Array.new(4,Array.new(4)) 
puts "Enter a Number"
p t= STDIN.gets
p t=t.to_i
 a[0][0]=t
 a[0][1]=t-1
 p a[0][2]=t-2
 a[0][3]=t
 a[1][0]=t-3
 a[1][1]=t
p a[1][2]=t
 a[1][3]=t-4
 a[2][0]=t-5
 a[2][1]=t
 a[2][2]=t
 p a[2][3]=t-6
 a[3][0]=t
 a[3][1]=t-7
p a[3][2]=t-8
 a[3][3]=t
p a
a.each  do|x|
 print  x[0]," " 
end

