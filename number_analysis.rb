#number_analysis.rb

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

def number_analysis(numeros)
  
  pares = numeros.select { |n| n.even? }
  puts "Os pares são: #{pares.inspect}"
  
  impares = numeros.select { |n| n.odd? and n > 10 }
  puts "Ímpares acima de 10: #{impares.inspect}"
  
  pares_dobrados = pares.map { |n| n * 2 }
  puts "Pares dobrados: #{pares_dobrados.inspect}"
  
  soma = numeros.sum
  puts "Soma total: #{soma}"
  
  i = 0
  while i < 5
    puts numeros[i]
	i += 1
  end
  
end

number_analysis(numeros)
