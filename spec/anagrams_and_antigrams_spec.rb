require 'rspec'
require 'pry'
require 'anagram_antigram'

describe ('Anagrams_and_antigrams') do

  it ("converts all the letters in a word to lower case") do
    anagram= Anagrams.new("")
    expect(anagram.string_lowercase("RESTFul Fluster")).to(eq("restful fluster"))
  end

  it ("returns the inputted words as a sorted array") do
    anagrams = Anagrams.new("")
    expect(anagrams.sorted_words("tea eat tea")).to(eq(["aet", "aet", "aet"]))
  end

  it ("removes all non-word characters and removes digets") do
    anagrams= Anagrams.new("")
    expect(anagrams.only_letters("asdf235$#&()*,,,,}hjkl")).to(eq("asdfhjkl"))
  end

  it ("removes all repeating letters in for every word") do
    anagrams= Anagrams.new("")
    expect(anagrams.remove_word_letter_duplicates (["aaaadffg","bbbbasd","cccccasd"])).to(eq(["adfg","basd","casd"]))
  end

  it ("checks if a word has a vowel") do
    anagrams= Anagrams.new("")
    expect(anagrams.has_vowel?("dddfg")).to(eq(false))
  end

  it ("checks if any word in array doesn't have a vowel") do
    anagrams= Anagrams.new("")
    expect(anagrams.word_array_vowel(["babbb","wsadfwsdf","fqfvsdn"])).to(eq("You need to input words with vowels!"))
  end

  it ("returns the union of a set with itself") do
    anagrams = Anagrams.new("")
    expect(anagrams.union(["aet", "aet"])).to(eq(["aet"]))
  end
  it ("removes duplicate letters in each word") do
    anagrams = Anagrams.new("")
    expect(anagrams.remove_word_letter_duplicates(["apple", "bottle","boot"])).to(eq(["aple", "botle","bot"]))
  end
  it ("Combines all the words in an array into one big string") do
    anagrams = Anagrams.new("")
    expect(anagrams.only_letters(["toy", "bat","soccer"])).to(eq("toybatsoccer"))
  end

  it ("tests for anagram by returning a true or false statment if there ar any non-unique letters") do
    anagrams= Anagrams.new("")
    expect(anagrams.antigram?(["a","b","d","c","f"])).to(eq("These words are antigrams"))
  end

  it ("returns a statement if two members are, or are not antigrams") do
    anagrams= Anagrams.new("")
    expect(anagrams.antigram_return_statement(["a","b","d","c","f","a"])).to(eq("These words have letter matches and are NOT antigrams."))
  end

  it ("returns a complete test") do
    anagrams= Anagrams.new("thI2S IS a a is st,,ring t^est")
    expect(anagrams.all_tests()).to(eq("All the words have vowels! These words have matching anagrams! These words have letter matches and are NOT antigrams."))
  end

  it ("returns a second complete test with opposite anagram and antigram results") do
    anagrams= Anagrams.new("ChECk, IF, t1w2o3")
    expect(anagrams.all_tests()).to(eq("All the words have vowels! These words do NOT have matching anagrams! These words are antigrams"))
  end
end
