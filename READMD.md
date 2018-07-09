# Anagrams and Antigrams

#### Epicodus Ruby: 06/29/2018

#### By Nick Brown
## Description
a ruby program that has a method that test the words in the inputted sentence for vowels, if the sentence has any anagrams, and if the sentence has any  antigrams.

## Design 

<img width="980" alt="screen shot 2018-07-09 at 12 31 41 pm" src="https://user-images.githubusercontent.com/39496805/42471851-1198dcb0-8374-11e8-87f5-f9cda24385fd.png">

## Specifications
* _1  returns the all the letters in a string to lowercase
  - _Example Input: _ "STRING"
  - _Example Output: _"string"
* _2 Takes string and divides it up into words for every space in the string. The words are sorted and pushed into an array.
  - _Example Input: _"why hello there"
  - _Example Output: ["hwy", "ehllo", "eehrt"]
* _3 Takes each individual word in an array and strips all numbers and non-word characters from it
  - _Example Input: _["hi,,123","t.h@e!r.e"]
  - _Example Output: _["hi","there"]
* _4 Checks to see if a word has a vowel
  - _Example Input: _ "hello"
  - _Example Output: _ true
* _5 Looks over each word in an array calling upon the vowel check. Returns one of two statements.
  - _Example Input: _ ["sdfdfs","ccccc","lphjnm"]
  - _Example Output: _"You need to input words with vowels!"
* _6 Takes an array and returns the union of the array with itself
  - _Example Input: _ ["a", "a", "b"]
  - _Example Output: _ ["a", "b"]
* _7 Compares the array with the result of the array after the set union. If they are not the same then at least one recurring member of the set was removed indicating an anagram was present.
  - _Example Input: _ ["a", "a", "b"]
  - _Example Output: _ "These words have anagrams"
* _8 The recurring members of the array are removed
  - _Example Input: _ ["apple", "apple", "boy", "boy","cat"]
  - _Example Output: _ ["apple","boy","cat"]
* _9 takes all the duplicate letters for each word and puts them back into an array
  - _Example Input: _ ["letters", "present","anagrams"]
  - _Example Output: _ ["letrs", "prsent","angrams"]
* _10 Takes all the elements in array and outputs them into a string
  - _Example Input: _ ["letrs", "prsent","angrams"]
  - _Example Output: _ ["l","e","t","r","s","p",r","e","s","n",t","a","g","r","a","m","s"]
* _11 takes the intersection of a set with itself
  - _Example Input: _ ["a", "a", "b", "c"]
  - _Example Output: _ ["a", "b", "c"]
* _11 Compares the array with the result of the string after the set intersection. If they are not the same then at least one recurring letter of the set was removed indicating at least one word is not an antigram.
  - _Example Input: _ ["b","o","y","s","w","e",t","n","a","g"]
  - _Example Output: _ "These words are antigrams"
* _11 Combines all the previous steps into a all_test method returns vowel, anagram, and anagram statement results
  - _Example Input: _"ChECk IF t1w2o3"
  - _Example Output: _"All the words have vowels! These words do NOT have matching anagrams! These words are antigrams"

## Setup/Contribution Requirements

1. Clone the repo
1. Make a new branch
1. Commit and push your changes
1. Create a PR

## Technologies Used

* Ruby 2.4.1

### License

*{This software is licensed under the MIT license}*
