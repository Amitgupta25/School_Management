require 'colorize'
require_relative('student.rb')
require_relative('my_class.rb')

class School
    CLASSROOM = []
    def user_input
        puts 'Please select 1 for Adding a Class'
        puts 'Please select 2 for Adding a Student'
        puts 'Please select 3 for Viewing the List of Students'
        puts 'Please select 4 for Exit'
    end

    def executor
			user_input()
			while (input = gets.chomp) != '4'  
				binding.pry
				case input
					when '1' then MyClass.create_class
					when '2' then Student.new(CLASSROOM).add_student
					when '3' then Class.view_list
					else puts 'Invalid input'.colorize( :red )
							user_input()
				end  
			end
    end
end

School.new.executor