require 'pry'

class PigLatinizer

  def piglatinize(word)
    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u A E I O U]
    consonants = alpha - vowels

    if vowels.include?(word[0])
      word + 'way'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    else
      word # return unchanged
    end
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map {|word| piglatinize(word)}.join(" ")
    binding.pry
  end

end
