# code here
require 'pry'

class School
  
  attr_reader :roster, :add_student, :grade
  attr_reader
  
  def initialize(roster)
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student_name
    else
      @roster[grade] = [student_name]
    end
  end
  
  def grade(grade)
    @roster.select do |key, val|
      if key == grade
        return val
        binding.pry
      end
    end
  end
  
  def sort()
    # @roster.values.sort
    @roster.each do |k, v|
      v.sort!
    end
  end
  
end