# age.rb

def print_age
  puts "What is your age?"
  age = gets.chomp.to_i
  count = 0
  for counter in 0..3
    age += 10
    count += 10
    puts "In " + count.to_s + " years you will be: " + age.to_s
  end
end

print_age
