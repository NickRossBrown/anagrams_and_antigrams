class Anagrams

  def initialize (words_input)
    @inputted_words = words_input
  end

  def master ()
    words = string_lowercase(@inputted_words)
    words = sorted_words(words)
    words = only_letter_array(words)
    words = remove_word_letter_duplicates (words)
    vowel = word_array_vowel(words)
    words_union = union(words)
    anagram = anagram?(words)
    words = union(words)
    letters = only_letters(words)
    antigram = antigram?(letters.split(""))
    vowel + " " + anagram  + " " + antigram
  end

  def string_lowercase (string)
    string.downcase
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
      return "These words have matching anagrams!"
    else
      return "These words do NOT have matching anagrams!"
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
    set | set
  end

  def antigram?(array)
    if intersection(array)== array
      "These words are antigrams"
    else
      "These words have letter matches and are NOT antigrams."
    end
  end

  def antigram_return_statement(array)
    if antigram?(array) == true
      "These words are antigrams"
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

  def remove_word_letter_duplicates (array)
    word_array=[]
    array.each do |word|
      unique_array = []
      unique_array = word.split("")
      unique_array = unique_array & unique_array
      word_array.push(unique_array.join)
    end
    word_array
  end

end
