dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

str = "Howdy partner, sit down! How's it going?"
str1 = 'below Below'

occurrencies = []

dict.map do |word|
  occurrencies << str.downcase.scan(/#{word}/)
end

matches = occurrencies.flatten.reduce(Hash.new(0)) do |result, show|
  result[show] += 1
  result
end

p matches
