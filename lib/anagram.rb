require 'pry'

class Anagram
  attr_accessor :word
      
  @anagrams = []
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.each do |word|
      if split(word) == split(@word)
        @anagrams << word 
      else
        @anagrams
      end
    end
  end
  
  private
  
  def split(word)
    split_array = word.split (//)
    split_array.sort
  end
  
end