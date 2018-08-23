require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/guess'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test

  def test_it_exits
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_instance_of Deck, deck
  end

  def test_it_can_tell_us_the_cards_in_the_deck
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    card_3 = Card.new("5", "Diamonds")
    deck = Deck.new([card_1, card_2, card_3])
    assert_equal [card_1, card_2, card_3], deck.cards
  end

def test_it_can_count_cards_in_deck
  card_1 = Card.new("3", "Hearts")
  card_2 = Card.new("4", "Clubs")
  card_3 = Card.new("5", "Diamonds")
  deck = Deck.new([card_1, card_2, card_3])
  assert_equal 3, deck.count
end

def test_it_can_sort_one_card
  skip
  card_1 = Card.new("3", "Hearts")
  deck = Deck.new([card_1])
  # binding.pry
  assert_equal [card_1], deck.sort
end

def test_it_can_sort_two_cards
  card_1 = Card.new("5", "Hearts")
  card_2 = Card.new("3", "Clubs")
  deck = Deck.new([card_1, card_2])
  assert_equal [card_2, card_1], deck.sort_small_values([card_1, card_2])
end

def test_it_can_sort_three_cards_based_on_value
  card_1 = Card.new("5", "Hearts")
  card_2 = Card.new("3", "Clubs")
  card_3 = Card.new("8", "Spades")
  deck = Deck.new([card_1, card_2, card_3])
  assert_equal [card_2, card_1, card_3], deck.sort_small_values([card_1, card_2, card_3])
  # binding.pry
end

def test_it_can_sort_two_cards_based_on_suit
  skip
  card_1 = Card.new("3", "Hearts")
  card_2 = Card.new("3", "Clubs")
  deck = Deck.new([card_1, card_2])
  result = deck.sort_based_on_suit([card_1, card_2])
  assert_equal [card_2, card_1], result
end

def test_it_can_sort_face_value_cards
  card_1 = Card.new("Ace", "Hearts")
  card_2 = Card.new("Jack", "Clubs")
  deck = Deck.new([card_1, card_2])
  result = deck.sort_face_values([card_1, card_2])
  assert_equal [card_2, card_1], result
end



# def test_it_can_extract_values
#   card_1 = Card.new("5", "Hearts")
#   card_2 = Card.new("3", "Clubs")
#   card_3 = Card.new("8", "Spades")
#   deck = Deck.new([card_1, card_2, card_3])
#   assert_equal ["5", "3", "8"], deck.card_values_as_strings
# end
#
# def test_it_can_turn_those_values_into_integers
#   card_1 = Card.new("5", "Hearts")
#   card_2 = Card.new("3", "Clubs")
#   card_3 = Card.new("8", "Spades")
#   deck = Deck.new([card_1, card_2, card_3])
#   assert_equal [5, 3, 8], deck.card_values_as_integers
#   binding.pry
# end

end
