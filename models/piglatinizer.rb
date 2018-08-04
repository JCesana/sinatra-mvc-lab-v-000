require 'pry'

class PigLatinizer
  attr_reader :user_text 

  def piglatinize(user_text)
    word_list = user_text.strip.split(" ")
    
    if word_list.length == 1 
      piglatnize_word(word_list[0])
    else 
      piglatinized_list = []
      
      word_list.each do |word|
        piglatinized_list << piglatnize_word(word)
      end 
      
      piglatinized_list.join(" ")
    end 
  end 
  
  def piglatnize_word(word)
    alphabet = ('a'..'z').to_a 
    vowels = %w[a e i o u]
    consonants = alphabet - vowels
    
    binding.pry 
    
    if vowels.include?(word[0])
      word + 'way'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    else
      word
    end
    
  end 
end 

  