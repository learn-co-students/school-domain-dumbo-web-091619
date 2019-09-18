# code here!
require 'pry'
class School
  attr_accessor :roster, :student, :grade

  def initialize(name)
  @name = name
  @roster = {} 
  end


  def add_student(student, grade)
    if roster[grade] == nil
      roster[grade] = []
      roster[grade] << student
    else
      roster[grade] << student 
    end
  end

  def grade(grade)
     roster[grade]
  end

  def sort
    roster.each do |grade, students|
      roster[grade] = students.sort
    end
    roster 
  end



end

