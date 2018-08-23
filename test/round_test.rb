require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require './lib/round'
require 'pry'

class RoundTest < Minitest::Test
  def setup
    @card_1 = Card.new("3","Hearts")
    @card_2 = Card.new("4", "Clubs")
    @deck = Deck.new([@card_1, @card_2])
    @round = Round.new(@deck)
  end

  def test_it_exists
   assert_instance_of Round, @round
  end

  def test_it_takes_a_deck_object
    assert_equal @deck, @round.deck
  end

  def test_guesses_starts_as_an_empty_array
    assert_equal [], @round.guesses
  end

  def test_that_card_1_is_the_top_card
    assert_equal @card_1, @round.current_card
  end

  def test_it_records_current_guess_and_guesses_array
    assert_equal 0, @round.guesses.count
    @round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 1, @round.guesses.count
    assert_equal "Hearts", @round.guesses.first.card.suit
    assert_equal "3", @round.guesses.first.card.value
    assert_instance_of Card, @round.guesses.first.card
    @round.record_guess({value: "3", suit: "Hearts"})
    assert_equal 2, @round.guesses.count
  end

  def test_that_after_i_guess_the_deck_rotates_to_the_next_card
    @round.record_guess({value: "3", suit: "Hearts"})
    assert_equal @card_2, @round.current_card
  end

  def test_if_its_right_the_computer_says_correct
    @round.record_guess({value: "3", suit: "Hearts"})
    assert_equal "Correct!", @round.guesses.first.feedback
  end

  def test_if_its_wrong_the_computer_say_incorrect
    @round.record_guess({value: "7", suit: "Clubs"})
    assert_equal "Incorrect", @round.guesses.last.feedback
  end

  def test_if_the_guess_is_wrong_the_correct_guess_counter_does_not_go_up
    @round.record_guess({value: "7", suit: "Clubs"})
    assert_equal 0, @round.correct_guesses
  end


 def test_number_correct_starts_at_zero
   assert_equal 0, @round.correct_guesses
 end

 def test_number_correct_increments
   @round.record_guess({value: "3", suit: "Hearts"})
   assert_equal 1, @round.correct_guesses
 end

 def test_the_percent_correct_equals_100_with_correct_guess
   @round.record_guess({value: "3", suit: "Hearts"})
   assert_equal 100, @round.percent_correct
 end

end
