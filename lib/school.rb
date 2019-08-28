class School
  attr_reader :roster 
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(name, grade)
    if !@roster[grade]
      @roster[grade] = []
      @roster[grade] << name
    else
      @roster[grade] << name
    end
  end
  
  def grade(num)
    roster[num]
  end
  
  def sort
    new_roster = {}
    roster.each{|grade, name|
      new_roster[grade] = []
      new_roster[grade] = name.sort
    }
    new_roster
  end
  
end