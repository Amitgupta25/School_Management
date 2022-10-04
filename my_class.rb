require 'colorize'
require 'pry'

class MyClass 
  VALID_CLASS = (/^(1[0-2]|[0-9])$/)

  class << self
    def create_class(class_name)
      if class_name.match?VALID_CLASS
        return {"#{class_name}"=> []}
      else  
        puts 'Invalid input, Please Enter A valid input'.colorize( :red )
      end
    end
        
    def view_list(school_data, class_name)
      if school_data.any?{|i| i.has_key?"#{class_name}"} && !school_data.empty?
        school_data.each{|i| i["#{class_name}"].each {|j| puts j[:name]} }
      else
        puts "There is no such class present".colorize( :red )
      end
    end
  end
end
