require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'

class CardTest < Minitest::Test

 def test_it_exists
   card = Card.new("10", "Hearts")
   guess = Guess.new("10 of Hearts", card)
   assert_instance_of Guess, guess
 end

 def test_it_takes_the_card_object_in
   card = Card.new("10", "Hearts")
   guess = Guess.new("10 of Hearts", card)
   assert_equal card, guess.card
 end

 def test_it_has_a_response
   card = Card.new("10", "Hearts")
   guess = Guess.new("10 of Hearts", card)
   assert_equal "10 of Hearts", guess.response
 end

 def test_the_correct_method_returns_false
   card = Card.new("10", "Hearts")
   guess = Guess.new("10 of Hearts", card)
   assert_equal true, guess.correct?
 end

 def test_it_has_feedback_of_correct
   card = Card.new("10", "Hearts")
   guess = Guess.new("10 of Hearts", card)
   assert_equal "Correct!", guess.feedback
 end

 def test_the_correct_method_is_dynamic_in_functionality
   card = Card.new("10", "Hearts")
   guess = Guess.new("9 of Hearts", card)
   assert_equal false, guess.correct?
 end

 def test_the_feedback_method_is_dynamic
   card = Card.new("10", "Hearts")
   guess = Guess.new("9 of Hearts", card)
   assert_equal "Incorrect", guess.feedback
 end

end
