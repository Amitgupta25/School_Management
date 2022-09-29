require 'colorize'
require 'pry'
class Student
    
    attr_accessor :detail
    
    def initialize(data)
      @data = data
    end
    
    def add_student
      puts 'Please Enter the Class Where you want to add'
      class_name = gets.chomp 
      if @data.any?{|i| i.has_key?"#{class_name}"} && !@data.empty?()
          puts 'Student name'
          student_name = gets.chomp
          puts 'Roll number'
          roll_number = gets.chomp
          puts 'Birth date'
          birth_date = gets.chomp
          puts 'Percentage'
          student_percentage = gets.chomp
          student_details = {name: student_name, roll_no: roll_number, DOB: birth_date, percentage: student_percentage}
          @data.each{|i| i["#{class_name}"] << student_details }
          School.new.user_input
      else 
          puts 'Please create a class first'.colorize( :red )
          School.new.user_input
      end
    end
end