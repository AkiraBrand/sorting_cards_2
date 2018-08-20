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

 def record_guess(user_guess_hash)
   card_attributes = "#{user_guess_hash[:value]} of #{user_guess_hash[:suit]}"
   guess = Guess.new(card_attributes, current_card)
   @guesses << guess
 end

end
