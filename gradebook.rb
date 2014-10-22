#!/usr/bin/env ruby
class Gradebook
  def smccalco
    proj=["project3", "project4", "project5", "project6", "project7", "project8", "project9", "project10", "project11",
          "project12", "project13", "project14", "midterm", "final", "project"]
    proj15=proj.slice(0, 12)
    proj
    prompted(proj, proj15)
  end

  def prompted(proj, proj15)
    @gradebook=[]
    @dropescore=[]
    @project_scores=[]
    @exam_score=[]
    1.upto(15) do
      print "Enter score:"
      scorein = gets.chomp
      score = scorein.split(':')
      calc_exception(proj, proj15, score)
      scored_0=score[0]
      if scored_0 === "project"
       @project_scores<< score[1].to_i

      elsif  ['midterm', 'final'].include?(scored_0)
        @exam_score<< score[1].to_i
      end
       @gradebook<< score[1].to_i
      @dropescore<<score[1].to_i if proj15.include?(scored_0)
      scored_1=score[1]

    end
     sorted=@dropescore.sort
    @lowest_score=sorted[0]

   sorted.shift if sorted.length > 1

      @programming_project_score= sorted.inject(:+) unless sorted.empty?

     tot_project_score=@project_scores.inject(:+) unless @project_scores.empty?


     tot_droped= @gradebook.inject(:+) unless @gradebook.empty?
     tot_exam_score= @exam_score.inject(:+) unless @exam_score.empty?
    puts"Your Programming Project score was #{@programming_project_score} (100%) with the lowest score (#{@lowest_score}) being dropped"
    puts "Your Exam score was #{tot_exam_score} (100%)"
    puts "Your Project scores was #{tot_project_score} (100%)"
    puts "Your Total Course Grade was #{@programming_project_score+tot_exam_score+tot_project_score}=100%.  Nice Job!"

  end



  def calc_exception(proj, proj15, score)
    raise ArgumentError, "please input the correct project or test name in the right format !", caller unless  proj.include?(score[0])
    if proj15.include?(score[0])
      raise ArgumentError, "please input  numbers b?n 0..15, and in the right format !", caller unless  (0..15).to_a.include?(score[1].to_i)
    elsif proj[12]==score[0]
      raise ArgumentError, "please input numbers b?n 0..100, and in the right format !", caller unless (0..100).to_a.include?(score[1].to_i)

    elsif proj[13]==score[0]
      raise ArgumentError, "please input numbers b?n 0..100, and in the right format !", caller unless (0..100).to_a.include?(score[1].to_i)
    elsif proj[14]==score[0]
      raise ArgumentError, "please input numbers b?n 0..35, and in the right format !", caller unless (0..35).to_a.include?(score[1].to_i)
    end
  end

end
g=Gradebook.new
g.smccalco