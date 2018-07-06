require 'rspec'
require 'pry'
require 'anagram_antigram'

describe ('Anagrams_and_antigrams') do
  it ("seperates the words in a string to an array") do
    anagrams = Anagrams.new("this is a string with words")
    expect(anagrams.string_to_words_array()).to(eq(["this","is", "a","string","with","words"]))
  end
  it ("sorts a word by alphabetical order") do
    anagrams = Anagrams.new("tea")
    expect(anagrams.word_sort("tea")).to(eq("aet"))
  end
  it ("returns the inputted words as a sorted array") do
    anagrams = Anagrams.new("tea eat tea")
    expect(anagrams.array_sort(["eat","tea","eat"])).to(eq(["aet", "aet", "aet"]))
  end
  it ("returns the inputted words as a sorted array") do
    anagrams = Anagrams.new("tea eat tea")
    expect(anagrams.sorted_words()).to(eq(["aet", "aet", "aet"]))
  end
  it ("returns the union of a set with itself") do
    anagrams = Anagrams.new("eat tea")
    expect(anagrams.union(["aet", "aet"])).to(eq(["aet"]))
  end
  it ("returns a true statement if two words are a anagrams") do
    anagrams = Anagrams.new("eat tea")
    expect(anagrams.anagrams?(["aet", "aet"])).to(eq(true))
  end
  it ("returns a word statement if two words are a anagrams") do
    anagrams= Anagrams.new("tar rat")
    expect(anagrams.anagram_return_statement(["aet", "aet"])).to(eq("these two words are anagrams!"))
  end
  it ("converts all the letters in a word to lower case") do
    anagram= Anagrams.new("Restful, Fluster")
    expect(anagram.string_lowercase("RESTFul Fluster")).to(eq("restful fluster"))
  end
  it ("checks if a word has a vowel") do
    anagrams= Anagrams.new("dddfg")
    expect(anagrams.has_vowel?("dddfg")).to(eq(false))
  end
  it ("checks if any word in array doesn't have a vowel") do
    anagrams= Anagrams.new("dddfg")
    expect(anagrams.word_array_vowel(["babbb","wsadfwsdf","fqfvsdn"])).to(eq("You need to input words with vowels!"))
  end
  # it ("test if two words are antigrams") do
  #   anagrams = Anagrams.new("asdf hjkl")
  #   expect(anagrams.antigram?(["hi","bye"])).to(eq(true))
  # end
  it ("test if two words are anagrams with a true or false return") do
    anagrams= Anagrams.new("asdf hjkl")
    expect(anagrams.antigram?(["a","b","d","c","f"])).to(eq(true))
  end
  it ("test if two words are anagrams, then returns a statement if two words are antigrams") do
    anagrams= Anagrams.new("asdf hjkl")
    expect(anagrams.antigram_return_statement(["a","b","d","c","f","a"])).to(eq("These words have letter matches and are NOT antigrams."))
  end
end
