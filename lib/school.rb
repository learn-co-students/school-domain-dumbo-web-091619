require 'pry'
class School
    attr_reader :schoolname, :roster 
    def initialize(school_name)
        @name = school_name
        @roster = {}
    end 

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
            @roster[grade] << name
        else 
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
       sorted_keys = self.roster.sort_by {|key, val| key}.to_h
       sorted_keys.each do |key, val| 
       sorted_keys[key] = val.sort
        end
    end

end 

# school = School.new("Bayside")
# school.roster
# school.add_student("Zach Morris", 9)

# the_new_school = School.new("Bronx Science")
# the_new_school.roster
# the_new_school.add_student("Jacky", 10)
# the_new_school.add_student("Jacky", 10)
# the_new_school.add_student("Jacky", 10)
# binding.pry