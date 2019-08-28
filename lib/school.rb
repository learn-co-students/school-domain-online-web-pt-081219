require "pry"
class School 
attr_accessor :name, :roster   
  
  def initialize(name)
    @name = name 
    @roster = {}
  end 
  
  def add_student(name, grade)
    if roster.key?(grade)
      roster[grade] << name 
    else 
      roster[grade] = []
      roster[grade] << name
    end 
  end 
  
  def grade(grade)
    roster[grade]
  end 
  
  def sort 
    alpha_hash = {}
    roster.each do |grade, student|
      alpha_hash[grade] = student.sort
    end 
    alpha_hash
  end 
  
end 