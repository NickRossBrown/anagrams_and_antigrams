class Anagrams

  def initialize (words_input)
    @inputted_words = words_input
  end

  def master ()
    # puts @inputted_words
    words = string_lowercase(@inputted_words)
    # puts words
    words = sorted_words(words)
    # puts words
    words = only_letter_array(words)
    # puts words
    vowel = word_array_vowel(words)
    # puts vowel
    words_union = union(words)
    # puts words_union
    anagram = anagram?(words)
    # puts anagram
    # puts "WORDS"
    # puts words
    words = union(words)
    letters = only_letters(words)
    # puts letters
    # puts letters.split("")
    antigram = antigram?(letters.split(""))
    # puts antigram
    antigram = antigram_return_statement(words)
    # puts antigram
    # puts anagram
    puts vowel + " " + anagram  + " " + antigram
     vowel + " " + anagram  + " " + antigram
  end

  def string_lowercase (string)
    string.downcase
  end

  def string_to_words_array (string)
    string.split(" ")
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

  def sorted_words (string)
    sorted_words_array = []
    words_array = string.split(" ")
    words_array.each do |word|
      letters_array = word.split("").sort.join
      sorted_words_array.push(letters_array)
    end
    sorted_words_array
  end

  def union (array)
    union = array | array
  end
  def anagram? (array)
    if array.length != union(array).length
      return "these words have anagrams!"
    else
      return "these words do NOT have anagrams!"
    end
  end

  def anagrams? (array)
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
    letter_array
  end

  def antigram?(array)
    if intersection(array)== array
      true
    else
      false
    end
  end

  def antigram_return_statement(array)
    # puts antigram?(array)
    if antigram?(array) == true
      "these words are antigrams!"
    else
      "These words have letter matches and are NOT antigrams."
    end
  end
  def only_letters (string)
    string.to_s.gsub(/(\W|\d)/, "")
  end
  def only_letter_array(array)
    letter_array = []
    array.each do |word|
      letter_array.push(word.gsub(/(\W|\d)/, ""))
    end
    letter_array
  end
end
