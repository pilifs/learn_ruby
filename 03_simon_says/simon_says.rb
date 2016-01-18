def echo(word)
  word
end

def shout(word)
 word.upcase
end

def repeat(word, repeat=2)
  word_to_repeat = word
  (repeat - 1).times {word_to_repeat += " #{word}"}
  return word_to_repeat
end

def start_of_word(word, chars)
  word[0..(chars - 1)]
end

def first_word(words)
  split_words = words.split()
  split_words[0]
end

def titleize(words)
  split_words = words.split(" ")
  capitalized_array = []
  capitalized_array << split_words[0].capitalize
  split_words.shift(1)
  split_words.each { |word|
    if word != "and" && word != "or" && word != "over" && word != "the" then
      capitalized_array << word.capitalize
    else
      capitalized_array << word
    end
  }
  capitalized_array.join(" ")
end
