require 'pry'

class Anagram
  attr_accessor :word
      
  anagrams = []
  
  def initialize(word)
    @word = word
  end
  
  def match(array)
    array.each do |word|
      anagrams << word if split(word) == split(@word)
    end
  end
  
  private
  
  def split(word)
    split_arry = word.split (//)
    split_array.sort
  end
  
end