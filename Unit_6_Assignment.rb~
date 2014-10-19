#!/usr/bin/env ruby
def smccalco

print "Enter score:"
scoreIn = gets.chomp
 score = scoreIn.split(':')
 scored=score[1]
gradebook={}
p gradebook[score[0]]=scored.to_i
raise ArgumentError, "please input only numbers b/n 0 and 15, and the right format !", caller unless  (0..15).to_a.include?(scored.to_i)


end
smccalco()
