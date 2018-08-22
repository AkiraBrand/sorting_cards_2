class Card

attr_reader :value,
            :suit,
            :absolute_value

  def initialize(value, suit)
    @absolute_value = parse_value(value)
    # suit_checker(suit)
    #put value checker here
    @value = value
    @suit = suit
  end

  def parse_value(value)
    # if face_value [@value.face_value
    face_value = {Jack: 11,
                  Queen: 12,
                  King: 13,
                  Ace: 14}
    if face_value[value.to_sym]
      return face_value[value.to_sym]
    end

  end

  # def suit_checker(suit)
  #  if suit != "Spades" || suit != "Hearts" || suit != "Diamonds" || suit != "Clubs"
  #   raise ArgumentError, "Please enter a valid suit"
  #  end
  # end

end
