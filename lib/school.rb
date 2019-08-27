class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(students_name, students_grade)
    if @roster.include?(students_grade) == false
      @roster[students_grade] = []
    end
      @roster[students_grade] << students_name
  end
  
  def grade(grade) 
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, names|
      names.sort!
    end
  end
  
end

