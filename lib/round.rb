class Round

 attr_reader :deck,
             :guesses


 def initialize(deck)
   @deck = deck
   @guesses = []
 end

 def current_card
   @deck.cards.first
 end

 def record_guess(response)
   card_attributes = "#{response[:value]} of #{response[:suit]}"
   guess = Guess.new(card_attributes, current_card)
   @guesses << guess
 end

end
