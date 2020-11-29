require 'pry'

class Anagram
  attr_accessor :word
      
  @Anagrams = []
  
  binding.pry
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    binding.pry
    array.each do |word|
      if split(word) == split(@word)
        @Anagrams << word 
      else
        @Anagrams
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