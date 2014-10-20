require 'rubygems'
require 'artii'
require 'rubocop'

num = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

print "~~~~~~Choose Your Own Adventure Game~~~~~~".center(80)
print "Welcome. To the world of mystery. Where you get to decide. \n".center(80)
print "Are you ready? Y||N \n".center(60)

input = gets.chomp
input.downcase!


if input == 'y'

puts "Here we go.\n".center(80)
puts "Please enter your name: \n".center(80)
user_name = gets.chomp 
user_name.upcase! 
puts "Your name is #{user_name}. Welcome, #{user_name}!!!".center(80)

elsif input == 'n'

puts 'Alright. Maybe another time.'.center(80)

else 
 
num.each do |n|

puts "Huh. I did not understand. Please try again. Remember, Y||N  #{n} tries remaining.\n".center(80)
input = gets.chomp
input.downcase!

if n == 1
	print "Time out. Next Time."

end 
end
end

if input == 'y'

print "Welcome to awesome time.".center(80)
end