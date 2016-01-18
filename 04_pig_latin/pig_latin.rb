def translate(word)
  # If word does not include spaces (ie: one word) then do single word translate
  if !word.include?(" ") then
    single_word_translate(word)
  else
    # If multiple words then split them, run single word translate on each word, then rejoin sentence
    multi_words = []
    new_sentence = []
    multi_words = word.split(" ")
    multi_words.each {|word| new_sentence << single_word_translate(word)}
    return new_sentence.join(" ")
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
  # Check for a Q
  if consonant_array.include?("q") then
    # if Q
    return special_case(consonant_array, letter_array)
  else
    # if no Q
    return regular_case(consonant_array, letter_array)
  end
end

def regular_case(consonant_array, letter_array)
  # remove the consonants based on size of consonant array that we made
  letter_array.shift(consonant_array.count)
  # return that shifted array, with consonants appended followed by "ay"
  return letter_array.join("") + consonant_array.join("") + "ay"
end

def special_case(consonant_array, letter_array)
  # For first letter Q - it is assumed that Q will always be followed by u, no "special special" cases
  if consonant_array[0] == "q" then
    letter_array.shift(2)
    return letter_array.join("") + "quay"
  # For first letter NOT Q - shift by one more letter and add u before ay
  else
    letter_array.shift(consonant_array.count + 1)
    return letter_array.join("") + consonant_array.join("") + "uay"
  end
end
