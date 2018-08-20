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
    assert_equal 0, @round.guesses.count
    # this is making it clear that there should be no guesses
    # in the @round object. It's not actually necessary, but I added it
    # to help myself better understand what's going on
    @round.record_guess({value: "3", suit: "Hearts"})
    
    assert_equal 1, @round.guesses.count

    assert_equal "Hearts", @round.guesses.first.card.suit
    # you could add more assertions about the available attributes of things in 
    # the guesses array.
  end

end
