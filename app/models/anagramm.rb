class Anagramm
  attr_reader :word1, :word2, :anagram

  def initialize(w1, w2)
    @word1 = w1 || ''
    @word2 = w2 || ''
    @anagram = false
  end

  def solve
    return false unless @word1.length == @word2.length
    return false if @word1 == @word2
    @anagram = @word1.downcase.chars.sort == @word2.downcase.chars.sort
  end
end
