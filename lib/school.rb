# code here!

class School
    attr_accessor :name, :roster
    
    def initialize(name)
      @name = name
      @roster = {}
    end 
    
    def add_student(student, grade)
      
      roster[grade] ||= []
      roster[grade] << student
    end 
    
    def grade(grade)
      roster.detect do |student_grade, name| 
        if student_grade == grade
          return name
        end 
      end 
    end 
  
  
  def sort 
    sorting_hash = {}
    roster.each do |grade, name| 
      sorting_hash[grade] = name.sort 
    end 
    sorting_hash
  end 
    
end


