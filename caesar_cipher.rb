#caesar_cipher.rb

def shift_letter(letter, shift)
  if letter >= 'a' && letter <= 'z'
    base = 'a'.ord
    (((letter.ord - base + shift) % 26) + base).chr
  elsif letter >= 'A' && letter <= 'Z'
    base = 'A'.ord
    (((letter.ord - base + shift) % 26) + base).chr
  elsif letter >= '0' && letter <= '9'
    base = '0'.ord
    (((letter.ord - base + shift) % 10) + base).chr
  else
    letter  # preserva espaços e outros caracteres
  end
end

def caesar_cipher(string,shift)
  cypher = string.dup

  i = 0
  while i < string.length do
   cypher[i] = shift_letter(string[i], shift)
   i += 1
  end

  puts cypher
end

puts "Digite a frase ou palavra a ser cifrada:"
string_input = gets.chomp

puts "Digite o número de shifts para cada letra:"
shift_number = gets.chomp.to_i

caesar_cipher(string_input,shift_number)
