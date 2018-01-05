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
    initial_phrase = phrase.downcase.split(" ").map {|word| piglatinize(word)}.join(" ")
    if initial_phrase[0][0] == %w[a e i o u A E I O U]
      initial_phrase
    else
      final_phrase = initial_phrase.capitalize
      final_phrase
      binding.pry
    end
  end

end
