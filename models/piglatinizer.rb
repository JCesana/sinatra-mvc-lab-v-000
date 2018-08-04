class PigLatinizer
  attr_accessor :user_text 
  
  def initialize(text=nil)
    @user_text = text 
  end 
  
  def piglatinize
    word_list = user_text.split(" ")
    
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
    
    if vowels.include?(word[0])
      word + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    else
      word
    end
    
  end 
end 

  