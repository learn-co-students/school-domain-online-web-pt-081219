class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if roster[grade] == nil 
      roster[grade] = [student_name]
    else
      roster[grade] << student_name
    end
  end
  
  def grade(student_grade)
    roster[student_grade]
  end
  
  def sort 
    sorted = {}
    roster.each do |grade, student_names|
      sorted[grade] = student_names.sort
    end
    sorted
  end
end