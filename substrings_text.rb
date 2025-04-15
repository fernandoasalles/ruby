#substrings_text.rb

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(text, dictionary)
  result = Hash.new(0)
  text = text.downcase

  dictionary.each do |word|
    word_downcase = word.downcase
    found = text.scan(word_downcase)
    result[word_downcase] += found.length if found.any?
  end

  result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
