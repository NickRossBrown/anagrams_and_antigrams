class Anagrams
  attr_reader (:inputted_words)
  def initialize (words_input)
    @inputted_words = words_input

  end
  def string_to_words_array ()
    @inputted_words.split(" ")
  end
  def word_sort(word)
    word.split("").sort.join
  end
  def array_sort(array)
    sorted_words_array = []
    array.each do |word|
      sorted_words_array.push(word.split("").sort.join)
    end
    sorted_words_array
  end
  def sorted_words
    sorted_words_array = []
    words_array = @inputted_words.split(" ")
    words_array.each do |word|
      letters_array = word.split("").sort.join
      sorted_words_array.push(letters_array)
    end
    sorted_words_array
  end
  def union (array)
    union = array | array
  end
  def anagrams? (array)
    union = array | array
  end


  def anagrams_hashtest?(array)
    anagram = false
    word_count = Word_count.new(0)
    array.each do |word|
      word_count[word] += 1
    end
    word_count.each do |key,value|
      puts key
      puts value
      if value > 1
        puts "REACHED"
        anagram = true
      end
    end
    anagram
  end

  def anagrams()
    # splitted_words = []
    # inputted_words do |letter|
    #   splitted_words = splitted_words.unshift(letter)
    # end
    sorted_words_array = []
    words_array = @inputted_words.split(" ")
    words_array.each do |word|
      letters_array = word.split("").sort.join
      sorted_words_array.push(letters_array)
    end
    sorted_words_list = sorted_words_array.clone
    i = 0
    puts sorted_words_array
    sorted_words_array.each do |word|
      # end
    end

    sorted_words_array
  end
end
