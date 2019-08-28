require 'pry'

class School
  attr_reader :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !(roster[grade])
      roster[grade] = []
    end
    
    roster[grade] << name
  end
  
  def grade(grade_number)
    roster[grade_number]
  end
  
  def sort
    sorted_hash = {}
    
    @roster.each do |grade, students|
      sorted_hash[grade] = students.sort
    end
    
    sorted_hash
  end
end