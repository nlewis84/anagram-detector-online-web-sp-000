require 'pry'

class Anagram
  attr_accessor :word
      
  @@anagrams = []
  
  binding.pry
  
  def initialize(word)
    @word = word
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