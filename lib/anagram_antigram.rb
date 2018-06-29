class Anagram_antigram
  def initialize (words_input)
    @inputted_words = words_input

  end
  def anagrams()
    splitted_words = []
    inputted_words do |letter|
      splitted_words = splitted_words.unshift(letter)
    end

    splitted_words = @inputted_words.split(" ")
    array = []
    array2 = []
    if splitted_word.each do |letter|
      letter
     end

    splitted_words.each do |word|
      if array.include?(word)
        array2.push(word)
        puts "REACHED"
      end

      array.push(word)
      puts word
    end


    end
    array2
  end
end
