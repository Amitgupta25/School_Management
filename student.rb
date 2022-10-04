# require_relative('school.rb')
require 'colorize'
require 'pry'
class Student 
    
  attr_accessor :student_name, :roll_number, :birth_date, :class_name, :school, :student_percentage
    
  def initialize(school, class_name)
    @class_name = class_name
    @school = school
    if school.any?{|i| i.has_key?"#{class_name}"} && !school.empty?
      puts 'Student name'
      @student_name = gets.chomp
      puts 'Roll number'
      @roll_number = gets.chomp
      puts 'Birth date'
      @birth_date = gets.chomp
      puts 'Percentage'
      @student_percentage = gets.chomp
    else
      return puts 'Please create a class first'.colorize( :red )
    end
  end

  def add_student
    { name: student_name, roll_no: roll_number, DOB: birth_date, percentage: student_percentage }
  end
end