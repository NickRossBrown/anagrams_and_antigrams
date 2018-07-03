class Anagram_antigram
  attr_reader (:inputted_words)
  def initialize (words_input)
    @inputted_words = words_input

  end
  def return_inputted_words
    inputted_words
  end
  def anagrams_word_count()
    sorted_words_list = @inputted_words.split(" ").sort
    word_count = Hash.new 0
    sorted_words_list.each do |word|
      word_count[word] += 1
    end
    word_count

  end

  def anagrams()
    # splitted_words = []
    # inputted_words do |letter|
    #   splitted_words = splitted_words.unshift(letter)
    # end
    array = []
    words_array = @inputted_words.split(" ")
    words_array.each do |word|
      letters_array = word.split("").sort.join
      puts letters_array
      array.push(letters_array)

    end
    sorted_words_list = @inputted_words.split(" ").sort

    # while sorted_word_list.length >0 do
    #   word = sorted_word_list[-1 ]
    #   puts "word"
    #   puts word
    #   puts "list"
    #   sorted_word_list.delete(word)
    #   puts sorted_word_list
    #   puts sorted_word_list.include?(word)
    #   sorted_word_list = sorted_word_list.delete(word)
    #   condition = sorted_word_list.include?(word)
    #   puts "condition"
    #   puts condition
    #   if sorted_word_list.include?(word)
    #     puts "REACHED"
    #     duplicates = true
    #   end
    #   # binding.pry
    #
    # end

    # splitted_words.each do |word|
    #   if array.include?(word)
    #     array2.push(word)
    #     puts "REACHED"
    #     binding.pry
    #   end
    # #
    #   array.push(word)
    #   puts word
    # end



    sorted_words
  end
end
