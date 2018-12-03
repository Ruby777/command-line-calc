#! /usr/bin/ruby

def calc
    puts "Calculator V1.0 \nEnter 'q' to quit."
  
    while true
      print ">> "
      str = gets.chomp.split(" ")  

      # quit if first element is 'q'
      return if str[0] == 'q'      
      
      if str[0].include? "."
        operand1 = str[0].to_f
      else
        operand1 = str[0].to_i
      end
      
      if str[2].include? "."
        operand2 = str[2].to_f
      else
        operand2 = str[2].to_i
      end
      
      operator = str[1].to_sym
  
      case operator
        when :+ then puts operand1 + operand2
        when :- then puts operand1 - operand2
        when :* then puts operand1 * operand2
        when :/ then puts operand1 / operand2
        when :% then puts operand1 % operand2
      else
        puts "invalid input"
      end
    end
end
  
if __FILE__ == $0  
    calc
end


