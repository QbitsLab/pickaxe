#!/usr/bin/env ruby
class Chr_counter
  def in
    puts "Enter Data:"
    inn= gets.chomp
    str=inn.to_s
    pstr=str.scan(/\w/)
    freq=frequency_counter pstr
    sfreq= Hash[freq.sort_by{|key,value| key}]
    sfreq.each do |key, value|
      print "#{key.upcase} - #{value}-"
      puts "x"*value
    end
  end

  def frequency_counter(strin)
    counts=Hash.new(0)
    for ch in strin
      counts[ch] += 1
    end
    counts
  end
end

ccounter=Chr_counter.new
ccounter.in

