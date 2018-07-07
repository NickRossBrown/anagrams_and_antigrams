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

def intersection(set)
  set | set
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
