class PigLatinizer
  attr_accessor :user_text 
  
  def initialize(text=nil)
    @user_text = text
  end 
  
  def piglatinize(str)
    alphabet = ('a'..'z').to_a 
    vowels = %w[a e i o u]
    consonants = alpha - vowels 
    
    
  end 
end 