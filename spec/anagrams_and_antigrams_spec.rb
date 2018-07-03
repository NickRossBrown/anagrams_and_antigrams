require 'rspec'
require 'pry'
require 'anagram_antigram'

describe ('Anagrams_and_antigrams') do
  it ("returns a string") do
    anagrams_and_antigrams = Anagram_antigram.new("string")
    expect(anagrams_and_antigrams.return_inputted_words()).to(eq("string"))
  end
  it ("returns the inputted words as a sorted array") do
    anagrams_and_antigrams = Anagram_antigram.new("tea eat tea")
    expect(anagrams_and_antigrams.anagrams()).to(eq(["aet", "aet", "aet"]))
  end
  it ("returns a true statement if two words are a anagrams") do
    anagrams_and_antigrams = Anagram_antigram.new("eat tea")
    expect(anagrams_and_antigrams.anagrams?(["eat", "tea"])).to(eq(true))
  end
  it ("returns a word statement if two words are a anagrams") do
    anagrams_and_antigrams = Anagram_antigram.new("tar rat")
    expect(anagrams_and_antigrams.anagrams()).to(eq("these two words are anagrams!"))
  end
  it ("returns a true statement if two words with different capitalization are a anagrams") do
    anagrams_and_antigrams = Anagram_antigram.new("Restful, Fluster")
    expect(anagrams_and_antigrams.anagrams(["Restful, Fluster"])).to(eq("these two words are anagrams!"))
  end
  it ("checks if an inputted string is defined as a word") do
    anagrams_and_antigrams = Anagram_antigram.new("asdfg")
    expect(anagrams_and_antigrams.anagrams()).to(eq("You need to input actual words!"))
  end
  it ("test if two words are antigrams") do
    anagrams_and_antigrams = Anagram_antigram.new("asdf hjkl")
    expect(anagrams_and_antigrams.anagrams()).to(eq(true))
  end
  it ("testf two words are anagrams, then returns a statement if two words are antigrams") do
    anagrams_and_antigrams = Anagram_antigram.new("asdf hjkl")
    expect(anagrams_and_antigrams.anagrams()).to(eq("These words have no letter matches and are antigrams."))
  end
end
