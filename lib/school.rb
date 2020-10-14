class School
    attr_accessor :name, :roster

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(num)
        roster.detect do |x, y|
            if x == num
                return y
            end
        end
    end

    def sort 
        nu_hash = {}
        roster.each do |x, y| 
          nu_hash[x] = y.sort 
        end 
        nu_hash
      end 
        


end

school = School.new("Bayside High School")

