require 'pry'

class Anagram
  attr_accessor :word
      
  @anagrams = []
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.each do |word|
      @anagrams << word if split(word) == split(@word)
      binding.pry
      @anagrams
    end
  end
  
  private
  
  def split(word)
    split_array = word.split (//)
    split_array.sort
  end
  
end