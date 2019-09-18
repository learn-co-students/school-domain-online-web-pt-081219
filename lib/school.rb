class School
  @@roster = {}
  
  def initialize(name)
    @name = name 
    @@roster
  end 
  
  def roster
    @@roster = {}
  end 
  
  def add_student(name, grade)
    @name = name
    @grade = grade 
  end 

