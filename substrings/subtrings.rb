def substrings word, dictionary
	result = Hash.new(0)
	
	word.split.each do |s|
		dictionary.each do |d| 
			if s =~ /#{d}/
				result[d] += 1
			end
		end
	end
	p result
end

dictionary = ["below","down","go","going","horn","how","howdy",
			  "it","i","low","own","part","partner","sit"]

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)