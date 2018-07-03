class Anagram_antigram
  attr_reader (:inputted_words)
  def initialize (words_input)
    @inputted_words = words_input

  end
  def return_inputted_words
    inputted_words
  end

  def anagrams()
    # splitted_words = []
    # inputted_words do |letter|
    #   splitted_words = splitted_words.unshift(letter)
    # end
    array = []
    splitt_words = @inputted_words.split(" ")
    sorted_words = splitt_words.sort
    # splitted_words.each do |word|
    #   # if array.include?(word)
    #   #   array2.push(word)
    #   #   puts "REACHED"
    #   #   binding.pry
    #   # end
    #
    #   array.push(word)
    #   puts word
    # end

    sorted_words
  end
end
