#substrings.rb

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(substring, dictionary)
  result = Hash.new(0) # starts a hash with standard value 0
  substring = substring.downcase # sets the provided substring to lowcase
  
  dictionary.each do |word| # for each word in the dictionary
    word_downcase = word.downcase # sets the word to lowcase
	if substring.include?(word_downcase) # tests if the word in the dictionary is part of the substring
	  result[word_downcase] += substring.scan(word_downcase).length # adds to the hash how many times the word in the dictionary appeared
	end
  end
  
  result  # returns the hash
end

puts substrings("below", dictionary)
