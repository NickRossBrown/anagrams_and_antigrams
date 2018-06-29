class Anagram_antigram
  def initialize (words_input)
    @inputted_words = words_input

  end
  def anagrams()
    plitted_wordseach do |letter|
      splitted_words = splitted_words.unshift(letter)
    end
    splitted_words = @inputted_words.split(" ")
    array = []
    array2 = []
    splitted_words.each do |word|
      if array.include?(word)
        array2.push(word)
        puts "REACHED"
      end
      array.push(word)
      puts word
    end
    splitted_wordseach do |letter|
      splitted_words = splitted_words.unshift(letter)
    end
    array2
  end
end
