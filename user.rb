
require "./student.rb"
require "./modulefunctions.rb"

class User

    extend Mfunction

    def self.start

   loop do
    
     puts
     puts "Welcome to Student Management System"
        
     puts "1.Add a new student."
     puts "2.Display all students."
     puts "3.Search for a student."
     puts "4.Update a student information."
     puts "5.Delete a student."
     puts "6.Exit."
     puts "Enter Your choice"
     
      inn()
    
     choice=gets.to_i;
      
     
     case choice
     when 1
           puts "Add New Student"
           puts "Enter Student's Name";
           name=gets.chomp.capitalize();
           puts "Enter Name of Age";
           age=gets.chomp;
           puts "Enter Name of Grade(eg- A,B,C,D)";
           grade=gets.chomp.upcase;
             
            add_student(name,age,grade);
    
     when 2
             show_all()
     when 3
           puts "Searching Student's Record"
           puts "Enter Student's Name";
           name=gets.chomp.capitalize();
            
           search_student(name)
     when 4
           puts "Update Student's Record"
           puts "Enter Student's Name";
           name=gets.chomp.capitalize();
           puts "Enter New Age"
           new_age=gets.chomp;
           puts "Enter New Grade"
           new_grade=gets.chomp;
           
           update_student(name,new_age,new_grade);
     when 5
           puts "Delete Student's Record"
           puts "Enter Student's Name";
           name=gets.chomp.capitalize();
           
           delete_student(name); 
     when 6
            break;
     else
        puts "Invalid choice"
     end
     
    
    end
        
    end    
    
    end  
    
    User.start


    