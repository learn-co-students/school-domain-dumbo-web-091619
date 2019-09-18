class School
    attr_accessor :name
    attr_accessor :roster

    def initialize(name)
        @name = name
        @roster = Hash.new()
    end

    def add_student(name, grade)
        @roster[grade] = [] unless @roster[grade]
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.update(@roster) {|key, students| students.sort }
    end
end