def substrings(sentence, dictionary)
	result = Hash.new(0)
	dictionary.each do |word|
		sentence.downcase.scan(word.downcase) do |match|
			result[word] += 1
		end
	end

	result = result.sort_by {|word, count| word}
	p result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)	
substrings("Howdy partner, sit down! How's it going?", dictionary)