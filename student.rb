
require "./modulestudent.rb"

class Student

    include Mstudent

    attr_accessor :name, :age, :grade

    def initialize(name,age,grade)
        @name=name;
        @age=age;
        @grade=grade;

    end    

end    