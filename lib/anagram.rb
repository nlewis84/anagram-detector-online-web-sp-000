require 'pry'

class Anagram
  attr_accessor :word
      
  @@anagrams = []
  
  def initialize(word)
    @word = word
    @@anagrams.clear
  end
  
  def match(array)
    binding.pry
    array.each do |word|
      @@anagrams << word if split(word) == split(@word)
    end
    @@anagrams
  end
  
  private
  
  def split(word)
    split_array = word.split (//)
    split_array.sort
  end
  
end