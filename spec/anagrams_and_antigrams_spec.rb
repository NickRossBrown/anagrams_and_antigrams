require 'rspec'
require 'pry'
require 'anagram_antigram'

describe ('Anagrams_and_antigrams') do
  it ("returns a string") do
    expect(anagrams_and_antigrams("string")).to(eq("string"))
  end
end
