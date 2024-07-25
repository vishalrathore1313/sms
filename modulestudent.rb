require "./student.rb"

module Mstudent


    def output()

        "Name:#{@name}, Age:#{@age}, Grade:#{@grade}";    #fetching record from file

    end    

    def to_file

      return "#{@name},#{@age},#{@grade}"       #writing in file

    end   
    
    def self.from_file(line)

        name, age, grade = line.chomp.split(',')     #parallel assigning
   
        Student.new(name, age, grade)
    end    

end    