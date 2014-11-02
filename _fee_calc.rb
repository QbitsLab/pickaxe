class Smcfeecalc
  @@sessio= ["Fall", "Winter", "Spring", "Summer"]


  def calculfee
    prompt = '> '
    arg=[]

    puts "Enter number of units enrolled:", prompt
    no_of_unit_enrolled=$stdin.gets.chomp
    if no_of_unit_enrolled !~/\A[0-9]+/
      raise ArgumentError, "please input only numbers!", caller

    end
    arg<< no_of_unit_enrolled

    puts "Is this Fall[0], Winter[1], Spring[2] or Summer[3] session:", prompt
    session=$stdin.gets.chomp
    if session !~/\A[0-3]\Z/
      raise ArgumentError, "please input only 0|1|2|3!", caller

    end
    arg<< session

    puts "Are you a state resident[0] or not[1]:", prompt
    residence_status=$stdin.gets.chomp
    if residence_status !~ /\A[0-1]{1}\z/
      raise ArgumentError, "please input only 0|1!", caller

    end

    arg<<residence_status
    puts " Want a parking decal? [y/n]:", prompt

    parking=$stdin.gets.chomp
    if parking !~/y|n{1}/
      raise ArgumentError, "please input only y|n!", caller
    end
    arg<<parking
    puts "Want an AS sticker? [y/n]:", prompt
    stcker=$stdin.gets.chomp
    if stcker !~/y|n{1}/
      raise ArgumentError, "please input only y|n!", caller
    end
    arg<<stcker
    puts "Want an ID card? [y/n]:", prompt
    idcard=$stdin.gets.chomp
    if idcard !~/y|n{1}/
      raise ArgumentError, "please input only y|n!", caller
    end
    arg<<idcard
    @arg=arg


  end


  def enrollment_fee
    residentstatus()
    student_services_fee()
    parking_decal()

    puts " For #{@@sessio[@arg[1].to_i]} semester, your total fees are $       #{@fee_per_unit.to_f*@arg[0].to_f+@student_services_fee+ @parking_decal}"

  end

  def residentstatus
    if @arg[2].to_i==0
      @fee_per_unit=46.00
    else
      @fee_per_unit=325.00
    end
  end

  def student_services_fee
    ass_ticker_fee()
    idcardfee()
    @student_services_fee= case @arg[1].to_i
                             when 0 then
                               50.5 + @ass_ticker_fee.to_f + @idcardfee.to_f

                             when 1 then
                               47.50 + @ass_ticker_fee.to_f + @idcardfee.to_f
                             when 2 then
                               50.50 + @ass_ticker_fee.to_f + @idcardfee.to_f
                             else
                               47.50 + @ass_ticker_fee.to_f + @idcardfee.to_f
                           end

  end

  def ass_ticker_fee
    if @arg[4].to_s=="y"
      @ass_ticker_fee=0.00
    else
      @ass_ticker_fee=-19.50
    end

  end

  def idcardfee
    if @arg[5].to_s=="y"
      @idcardfee=0.00
    else
      @idcardfee=-13.00
    end
  end


  def parking_decal
    if @arg[3].to_s=="y"
      @parking_decal= case @arg[1].to_i
                        when 0 then
                          85.00

                        when 1 then
                          45.00
                        when 2 then
                          85.00
                        else
                          45.00
                      end
    else
      @arg[3].to_s=="n"
      @parking_decal=0
    end
  end
end
smcfee=Smcfeecalc.new
smcfee.calculfee
smcfee.enrollment_fee
