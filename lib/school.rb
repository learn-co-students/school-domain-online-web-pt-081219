class School

attr_reader :roster

def initialize(name)
    @name = name
    @roster = {}
end

def add_student(student_name, grade_level)
    if @roster.has_key?(grade_level) == false
    @roster[grade_level] = []
    @roster[grade_level] << student_name
    else 
        @roster[grade_level] << student_name
    end
    @roster
end

def grade(grade)
    return @roster[grade]
end

def sort
sorted_hash = {}
sorted_array = []
@roster.each do |grade, students|
    sorted_array = students.sort
    sorted_hash[grade] = sorted_array
end
sorted_hash
end

end