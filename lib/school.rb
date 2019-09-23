class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if !self.roster[grade]
            self.roster[grade] = []
            self.roster[grade] << student
        else
            self.roster[grade] << student
        end
    end

    def grade(grade_level)
        self.roster.collect do |grade, student|
            if grade == grade_level
                return student
            end
        end
    end

    def sort
        
        sorted = {}
        
        roster.map do |grade, student|
            sorted[grade] = student.sort
        end
        sorted
    end


end 