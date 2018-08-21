class Round

 attr_reader :deck,
             :guesses,
             :correct_guesses


 def initialize(deck)
   @deck = deck
   @guesses = []
   @correct_guesses = 0
 end

 def current_card
   @deck.cards.first
 end

 def record_guess(user_guess_hash)
   response = "#{user_guess_hash[:value]} of #{user_guess_hash[:suit]}"
   guess = Guess.new(response, current_card)
   @guesses << guess
   if guess.feedback == "Correct!"
     @correct_guesses += 1
     @deck.cards.rotate!
   end
 end

 def rotate
  @deck.cards.rotate!
 end

 def percent_correct
   @correct_guesses * 100 / @guesses.length
 end

end
