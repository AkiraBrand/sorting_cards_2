class Card

attr_reader :value,
            :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
  end


  # def suits
  #   suits = {Clubs: 1,
  #            Diamonds: 2,
  #            Hearts: 3,
  #            Spades: 4}
  # end





  # def suit_checker(suit)
  #  if suit != "Spades" || suit != "Hearts" || suit != "Diamonds" || suit != "Clubs"
  #   raise ArgumentError, "Please enter a valid suit"
  #  end
  # end

end
