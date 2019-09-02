class School
  attr_accessor :grade,:roster,:name
  attr_reader :school
  def initialize(school)
    @shool = school
    @roster = {}
  end

  
  def school(school)
    @school = school
  end
  
  def add_student(name,grade)
  	if @roster.has_key?(grade)
  	roster[grade] << name
  	else
  	  @roster[grade] = [name]
  end
end

def grade(grade)
  self.roster[grade]
end

def sort 
  self.roster.each do |grade, students|
    students.sort!
  end
end
end