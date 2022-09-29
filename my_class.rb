require 'colorize'
require 'pry'
require_relative 'school.rb'
class MyClass < School

    VALID_CLASS = (/^(1[0-2]|[0-9])$/)
    def create_class
        puts 'Please Enter The Class'
        class_name = gets.chomp
        if class_name.match?VALID_CLASS
            School::CLASSROOM << {"#{class_name}"=> []}
            user_input
        else  
            puts 'Invalid input, Please Enter A valid Class Name'.colorize( :red )
            user_input
        end
    end
    
    def view_list
        puts 'Please enter a class of students of whom you want to see the list'
        class_name = gets.chomp
        class_room = School::CLASSROOM
        if class_room.any?{|i| i.has_key?"#{class_name}"} && !class_room.empty?()
        class_room.each{|i| i["#{class_name}"].each {|j| puts j[:name]}}
          user_input
        else
          puts "There is no such class present".colorize( :red )
            user_input
        end
    end
end
