def translate(word)
  # If word does not include spaces (ie: one word) then do single word translate
  if !word.include?(" ") then
    single_word_translate(word)
  else

  end
end

def single_word_translate(word)
  letter_array = word.split("")
  vowel_array = ["a", "e", "i", "o", "u"]
  consonant_array = []
  letter_array.each { |letter|
    # if not vowel then add to new array of consonants
    if !vowel_array.include?(letter) then
      consonant_array << letter
    # break when it runs into a vowel
    else
      break
    end
  }
  # remove the consonants based on size of consonant array that we made
  letter_array.shift(consonant_array.count)
  # return that shifted array, with consonants appended followed by "ay"
  return letter_array.join("") + consonant_array.join("") + "ay"
end

def multi_word_translate
end
