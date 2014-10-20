class Chr_counter
  def in
    puts "Enter Data:"
    inn= gets.chomp
    str=inn.to_s
    pstr=str.scan(/\w/)
    freq=frequency_counter pstr
    freq.each do |key, value|
      print "#{key} - #{value}-"
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

