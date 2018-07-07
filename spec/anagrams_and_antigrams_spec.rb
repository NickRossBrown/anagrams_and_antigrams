require 'rspec'
require 'pry'
require 'anagram_antigram'

describe ('Anagrams_and_antigrams') do

  it ("returns the inputted words as a sorted array") do
    anagrams = Anagrams.new("tea eat tea")
    expect(anagrams.sorted_words("tea eat tea")).to(eq(["aet", "aet", "aet"]))
  end

  it ("returns the union of a set with itself") do
    anagrams = Anagrams.new("eat tea")
    expect(anagrams.union(["aet", "aet"])).to(eq(["aet"]))
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

  it ("tests for anagram by returning a true or false statment if there ar any non-unique letters") do
    anagrams= Anagrams.new("asdf hjkl")
    expect(anagrams.antigram?(["a","b","d","c","f"])).to(eq("These words are antigrams"))
  end
  it ("returns a statement if two words are, or are not antigrams") do
    anagrams= Anagrams.new("asdf hjkl")
    expect(anagrams.antigram_return_statement(["a","b","d","c","f","a"])).to(eq("These words have letter matches and are NOT antigrams."))
  end
  it ("removes all non-word characters and removes digets") do
    anagrams= Anagrams.new("asdf235$#&()*,,,,}hjkl")
    expect(anagrams.only_letters("asdf235$#&()*,,,,}hjkl")).to(eq("asdfhjkl"))
  end

  it ("removes all repeating letters in for every word") do
    anagrams= Anagrams.new("asdasd")
    expect(anagrams.remove_word_letter_duplicates (["aaaadffg","bbbbasd","cccccasd"])).to(eq(["adfg","basd","casd"]))
  end

  it ("returns a complete test") do
    anagrams= Anagrams.new("thI2S IS a a is st,,ring t^est")
    expect(anagrams.master()).to(eq("All the words have vowels! These words have matching anagrams! These words have letter matches and are NOT antigrams."))
  end

  it ("returns a second complete test with opposite anagram and antigram results") do
    anagrams= Anagrams.new("ChECk, IF, t1w2o3")
    expect(anagrams.master()).to(eq("All the words have vowels! These words do NOT have matching anagrams! These words are antigrams"))
  end
end
