class School 
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, student_grade)
    @roster[student_grade] ||= []
    @roster[student_grade] << student_name
  end 
  
  def grade(student_grade)
   return @roster[student_grade]
  end
  
  def sort 
    student_sort = {}
    @roster.each do |student_grade, students|
      student_sort[student_grade] = students.sort 
    end
    
    return student_sort
  end 
end
    