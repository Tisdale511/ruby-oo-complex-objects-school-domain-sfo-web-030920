# code here!
require 'pry'

class School

    attr_accessor :roster, :name


    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        
        if !@roster[grade]
            
            @roster[grade] = [name]
        else
            @roster[grade] << name   
        end
    end

    def sort
        new_hash = {}
        @roster.each do |key, value|
            new_hash[key] = value.sort
            
        end
        new_hash
    end

    def grade(num)
        return @roster[num]
    end


end
school = School.new("Yukon Highschool")

