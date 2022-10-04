require_relative('my_class.rb')
require_relative('student.rb')
require 'colorize'
require 'pry'

class School
	attr_accessor :input, :school_data
  def user_input
    puts 'Please select 1 for Adding a Class'
    puts 'Please select 2 for Adding a Student'
    puts 'Please select 3 for Viewing the List of Students'
    puts 'Please select 4 for Exit'
	end
 
  def executor
		user_input
		@school_data ||= []
		while (input = gets.chomp) != '4'
			case input
			when '1'
				school_data << MyClass.create_class(class_name)
			when '2'
				student_class = class_name("Where you want to add")
				student_details = Student.new(school_data, student_class).add_student.compact
				school_data.each{|i| i["#{student_class}"] << student_details } unless student_details.empty?
			when '3'
				MyClass.view_list(school_data, class_name)
			else 
				puts 'Invalid input'.colorize( :red )
			end
			user_input 
		end
  end

	def class_name(string='')
		puts "Please Enter The Class #{string}"
		gets.chomp
	end
end

School.new.executor