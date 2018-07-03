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
    anagrams_and_antigrams = Anagram_antigram.new("tea eat tea")
    expect(anagrams_and_antigrams.anagrams?(["eat", "tea", "tea"])).to(eq(true))
  end
end
