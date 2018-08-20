class Card

attr_reader :value,
            :suit

  def initialize(value, suit)
    # suit_checker(suit)
    #put value checker here
    @value = value
    @suit = suit
  end

  # def suit_checker(suit)
  #  if suit != "Spades" || suit != "Hearts" || suit != "Diamonds" || suit != "Clubs"
  #   raise ArgumentError, "Please enter a valid suit"
  #  end
  # end

end
