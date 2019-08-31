# code here!

class School
  attr_accessor :name, :roster
   def initialize(name)
    @name = name  
    @roster = {}
   end
   def add_student(student, gr) 
     roster[gr] ||= []
     roster[gr] << student
   end
   def grade(gr)
    roster.detect do |x, y| 
      if x == gr
        return y 
      end 
  end 
end
def sort 
  new = {}
  roster.each do |x, y| 
    new[x] = y.sort 
  end 
  new
end 
end