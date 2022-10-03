require 'colorize'
require 'pry'

class MyClass 
  VALID_CLASS = (/^(1[0-2]|[0-9])$/)

  def create_class
    puts 'Please Enter The Class'
    class_name = gets.chomp
    return {"#{class_name}"=> []} if class_name.match?VALID_CLASS  
    puts 'Invalid input, Please Enter A valid input'.colorize( :red )
  end
			
  def view_list
    # puts 'Please enter a class of students of whom you want to see the list'
    # class_name = gets.chomp
    # class_room = Student::data
    # if class_room.any?{|i| i.has_key?"#{class_name}"} && !class_room.empty?()
    #   class_room.each{|i| i["#{class_name}"].each {|j| puts j[:name]}}
    # else
    #   puts "There is no such class present".colorize( :red )
    # end
    # School.new.user_input
  end
end
