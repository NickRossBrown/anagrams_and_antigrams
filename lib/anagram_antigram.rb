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
    # puts "array"
    # puts array
    # puts "union"
    # puts union(array)
    # puts "array length"
    # puts array.length
    # puts "union length"
    # puts union(array).length
    if array.length != union(array).length
      return true
    else
      return false
    end
  end
  def anagram_return_statement(array)
    if anagrams?(array)==true
      "these two words are anagrams!"
    else
      "these two words NOT are anagrams!"
    end
  end
  def string_lowercase (string)
    string.downcase
  end

  def has_vowel? (word)
    if word.include? "a"
      true
    elsif word.include? "e"
      true
    elsif word.include? "i"
      true
    elsif word.include? "o"
      true
    elsif word.include? "u"
      true
    elsif word.include? "y"
      true
    else
      false
    end
  end

  def word_array_vowel(array)
    array.each do |word|
      if has_vowel?(word) == false
        return "You need to input words with vowels!"
      else
        next
      end
    end
    "All the words have vowels!"
  end
  def intersection(set)
    # puts set
    # puts "set ASDASD"
    set | set
    # puts "intersection ASDASD"
  end

  def words_to_array_thing (word)
    letter_array=[]
    array.each do |word|
      word.split("").each do |letter|
        letter_array.push(letter)
      end
    end
    puts letter_array
    letter_array
  end

  def antigram?(array)
    if intersection(array)== array
      true
    else
      false
    end
  end
  def antigram_return_statement(array
    puts antigram?(array)
    if antigram?(array) == true
      "these two words are antigrams!"
    else
      "These words have letter matches and are NOT antigrams."
    end
  end
  def string_lowercase (string)
    string.downcase
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
