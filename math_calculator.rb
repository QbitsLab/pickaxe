#!/usr/bin/env ruby

#
#         Auther Dawit Haile Achamyelhe
#
#
#
#
class Math_Calculator

  def prompt
    puts "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit:"
    @inputs1=gets.chomp
    testing(@inputs1)
  end

  def testing(inputs)
    case inputs
      when "N" then
        inn
      when "M" then
        median
      when "A" then
        average
      when "S" then
        deviation
      when "C" then
        cleared

      else
        puts "ONLY !!! A,C,M,N,Q,or S"
        prompt
    end
  end

  def inn
    @arr_inputs=gets.chomp
    testing @arr_inputs
  end


  def average
    input=@arr_inputs.split(" ").map(&:to_i)
    @avrg=(input.inject(:+)/(input.size).to_f)
    puts "the average is:#{@avrg}"
  end

  def median
    medi=@arr_inputs.split(" ").map(&:to_i)
    medium=medi.sort
    medisize=medium.size
    if medisize.even?
      eve=(medisize)/2
      @median=(medium[eve-1]+medium[eve])/2.0

    else
      odd=(((medisize)/2).to_i)
      @median = medium[odd]
    end
    puts "the median is:#{@median}"
  end

  def deviation

  end

  def cleared
    @arr_inputs=[]
    prompt
  end

  def quit

  end
end
calcu=Math_Calculator.new
calcu.prompt
