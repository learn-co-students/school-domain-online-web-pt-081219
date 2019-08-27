# code here!

class School 
  attr_reader :school, :roster
  
  
  def initialize (school)
    @school = school 
    @roster = {}
  end 
  
  def add_student (student, grade)
    
    if @roster[grade]
      @roster[grade] << student
    else 
      @roster[grade] = []
      @roster[grade] << student
    end
  end 
  
  def grade(number)
    @roster[number]
  end

  def sort
    @roster.each do |grade, name|
      @roster[grade] = name.sort
    end 
  end
  
end 