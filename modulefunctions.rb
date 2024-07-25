
module Mfunction

    FILE='students.txt'

    @@records=[];


 def inn

    @@records=load_data;

  end    
 

def add_student(name,age,grade)

    abc=Student.new(name,age,grade);
   
    @@records << abc;
   
    save_record;
   
end     

def show_all()
    
    if @@records.empty?
         puts "No Record found"
    else
        @@records.each{|i| puts i.output}   
        
    end    

end  

def search_student(name)

    result = @@records.find {|student| student.name == name}
    
    if result
        puts result.output;
    else   
        puts "Record not found" 
    end
end    


def update_student(name,new_age,new_grade)

       result = @@records.find { |student| student.name == name }

    if result
       result.age = new_age
       result.grade = new_grade

      save_record()

      puts "Student updated successfully!"
    else
      puts "Student not found!"
    end   

end  


def delete_student(name)

    if @@records.reject! { |student| student.name == name }

      save_record()
      puts "Student deleted successfully!"
    else
      puts "Student not found!"
    end
  end

def save_record()
    begin
    File.open(FILE, 'w') do |file|
        @@records.each { |student| file.puts(student.to_file) }
    end   
    rescue 
         puts "File not accessible for writing"
    end
end    


def load_data
    begin

       
    if File.exist?(FILE)

        File.readlines(FILE).map{ |line| Mstudent.from_file(line) }
       end
    rescue 
        puts "file not found for loading"
        return []
    end
end    


end


