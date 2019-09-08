# code here!
require 'pry'
class School

  attr_reader :name, :roster, :add_student

  def initialize(name, roster= {})
    @name = name
    @roster = roster
  end

  def add_student(name, grade)
    @name = name
    @grade = grade

    if !roster.has_key? grade
    roster[grade] = []
    end
    roster[grade].push(name)
  end


    def grade(grade)
      roster[grade]
    end

    def sort
      new_roster ={}
      roster.each do |grade, names|
        new_roster[grade] = names.sort
        # binding.pry
      end
      new_roster
    end
end
