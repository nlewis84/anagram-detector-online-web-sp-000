require 'pry'

class Anagram
  attr_accessor :word
      
  @anagrams = []
  
  binding.pry
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    binding.pry
    array.each do |word|
      if split(word) == split(@word)
        @anagrams << word 
      else
        @anagrams
        binding.pry
      end
    end
  end
  
  private
  
  def split(word)
    split_array = word.split (//)
    split_array.sort
  end
  
end