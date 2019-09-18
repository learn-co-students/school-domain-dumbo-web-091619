class School
  attr_accessor :name, :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, grade)
    if not self.roster[grade]
      self.roster[grade] = []
      self.roster[grade] << student
    else
      self.roster[grade] << student
    end
  end
  
  def grade(grade_level)
    self.roster[grade_level]
  end
  
  def sort
    sorted = {}
    self.roster.each do |grade, students|
      sorted[grade] = students.sort
    end
    return sorted
  end
  
end