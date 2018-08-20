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


  def test_it_takes_deck
    assert_equal @deck, @round.deck
  end

  def test_guesses_starts_as_an_empty_array
    assert_equal [], @round.guesses
  end

  def test_the_current_card
    assert_equal @card_1, @round.current_card
  end

  def test_it_records_current_guess
    guess = Guess.new("3 of Hearts", @card_1)
    @round.record_guess({value: "3", suit: "Hearts"})
    # binding.pry
    # round.current_card
    assert_equal 1, @round.guesses.count
    # binding.pry
    assert_includes @round.guesses, guess
    # binding.pry
  end

end
