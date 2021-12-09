def encrypt(text, shift_to_left_by = -3)
   # 1. Define an array with the 26 letters of the alphabet (in capital letters)
	alphabet = ("A".."Z").to_a
	# 2. Upcase the text and split the text in a `letters` array
  text_split_in_letters = text.upcase.split("")
	# 3. Iterate over letters, for each letter, test its inclusion in the alphabet
  encrypted_letter_array = text_split_in_letters.map do |letter|
    # 4. Map the letter to its left-shift or to itself
    index = alphabet.index(letter)
    index.nil? ? letter : alphabet[index + shift_to_left_by]
  end
  # 5. Join the mapped array and return it
  encrypted_letter_array.join
end
