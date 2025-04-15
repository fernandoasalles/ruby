# name.rb

first_name = 'John'
last_name = 'Doe'

def print_greeting
  puts "What is your first name?"
  first_name = gets.chomp
  puts "What is your last name?"
  last_name = gets.chomp
  puts "Hello " + first_name + " " + last_name + "! Cheers, mate!"

  10.times do |n|
    puts first_name + " " + last_name
  end
end

print_greeting

