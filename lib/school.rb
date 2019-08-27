# code here!

class School
  
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end
  
  def grade(is_grade)
    roster.detect do |grade, name|
      if is_grade == grade
        return name
      end
    end
  end
  
  def sort
    roster_hash = {}
    roster.each do |grade, names|
      roster_hash[grade] = names.sort
    end
    roster_hash
  end
  
end