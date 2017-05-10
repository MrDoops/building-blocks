def caesar_cipher str, key
	key %= 26
	str.gsub(/[a-zA-Z]/) do |character|
		apply_cipher(character.ord, key).chr
	end
end

def apply_cipher ascii, key
	shifted_ascii = ascii + key
	ascii.between?(65,90) && shifted_ascii > 90 ? shifted_ascii - 26 
		: shifted_ascii > 122 ? shifted_ascii -26 
		: shifted_ascii
end