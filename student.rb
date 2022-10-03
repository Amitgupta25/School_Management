require_relative 'school.rb'
require 'colorize'
require 'pry'
class Student
    
  attr_accessor :student_name, :roll_number, :birth_date, :class_name, :school
    
  def initialize(school)
    @school = school
    puts 'Please Enter the Class Where you want to add'
    @class_name = gets.chomp 
    if school.any?{|i| i.has_key?"#{class_name}"} && !school.empty?
      puts 'Student name'
      @student_name = gets.chomp
      puts 'Roll number'
      @roll_number = gets.chomp
      puts 'Birth date'
      @birth_date = gets.chomp
      puts 'Percentage'
    else 
      puts 'Please create a class first'.colorize( :red )
    end
  end

  def add_student
    student_percentage = gets.chomp
    student_details = {name: student_name, roll_no: roll_number, DOB: birth_date,   percentage: student_percentage}
    school.each{|i| i["#{class_name}"] << student_details }
  end
end