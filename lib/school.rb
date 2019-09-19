# code here!
class School
    attr_reader :roster
    def initialize(roster)
        @roster = {}
    end

    def add_student(student, grade)
        self.roster[grade] ||= []
        self.roster[grade] << student
    end

    def grade(given_grade)
        self.roster.map do |grade, students|
            if grade == given_grade
                return students
            end
        end
    end

    def sort
        sorted = {}
        roster.map do |grades, students|
           sorted[grades] = students.sort
        end
        sorted
    end



end
