require_relative('my_class.rb')
require_relative('student.rb')
require 'colorize'
require 'pry'

class School
	attr_accessor :input, :school
	@@school ||= []
  def user_input
    puts 'Please select 1 for Adding a Class'
    puts 'Please select 2 for Adding a Student'
    puts 'Please select 3 for Viewing the List of Students'
    puts 'Please select 4 for Exit'
		executor
	end

  def executor
		input = gets.chomp
		while !(input == "exit")
			case input
			when '1' 
		 		@@school << MyClass.new.create_class
			# when '2' then Student.new(@@school).add_student
			# # when '3' then MyClass.view_list
			else 
				return puts 'Invalid input'.colorize( :red )
			end 
			user_input
		end
  end
end