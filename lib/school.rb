class School
  def initialize(name)
   @school = name
   @roster ={}
  end
  
  def roster
    @roster 
  end
  
  def add_student(student_name, student_grade)
    roster[student_grade] ||= [] 
    roster[student_grade] << student_name

end

def grade(student_grade) 
  roster[student_grade]
  
end

def sort 
  @roster.each{|grade, name|  @roster[grade] = name.sort}
end
end