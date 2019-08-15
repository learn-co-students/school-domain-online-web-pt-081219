class School
  
  def initialize(name)
   @school = name
   @roster ={}
  end
  
  def roster
    @roster 
  end
  
  
    def add_student(name, grade)
      @roster[grade] = [] if !@roster[grade]
      @roster[grade] << name
    end
    
    def grade(grade)
      @roster[grade]
    end
    
    def sort 
      @roster.each{|grade, names|  @roster[grade] = names.sort}
    end
end
