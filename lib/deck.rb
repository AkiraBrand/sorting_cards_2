class Deck
  require 'pry'
  attr_reader :cards,
              :sort_face_values


  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def sort
  loop do
    sorted_cards = false
    (count-1).times do |index|
      if cards[index].cards_final_value > cards[index+1].cards_final_value
        cards[index], cards[index+1] = cards[index+1], cards[index]
        sorted_cards = true
      end
    end
    break if sorted_cards == false
  end
  return cards
  end

end
