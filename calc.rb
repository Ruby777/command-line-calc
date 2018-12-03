#! /usr/bin/ruby

def get_int_values
    [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [a]dd,[m]ultipy, [d]ivide or [s]ubtract?"
response = gets.chomp

case response[0].downcase
when 'a'
    puts "Which numbers would you like to add?"
    operator = :+

when 's'
    puts "Which numbers would you like to subtract?"
    operator = :-
    
when 'm'
    puts "Which numbers would you like to multiply?"
    operator = :*

when 'd'
    puts "Which numbers would you like to divide?"
    operator = :/
end

answer = get_int_values.inject(operator)
puts "The answer is #{answer}"