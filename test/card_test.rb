require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'

class CardTest < Minitest::Test

  def test_it_exists
    skip
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_we_can_check_for_wrong_suit
    skip
    assert_raises ArgumentError do
      Card.new("Ace", "Chickens")
    end
  end

  def test_suit_checker_works
    skip
   card = Card.new("Ace", "Chickens")
   user_error = "Please enter a valid suit"
   assert_equal user_error, card.suit_checker("Chickens")
  end

  def test_it_has_a_value
    skip
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end

  def test_it_has_a_suit
    skip
    card = Card.new("Ace", "Spades")
    assert_equal "Spades", card.suit
  end

  def test_it_can_create_multiple_cards_with_correct_attributes
    skip
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")

    assert_equal "3", card_1.value
    assert_equal "4", card_2.value
    assert_equal "5", card_3.value
  end

end
