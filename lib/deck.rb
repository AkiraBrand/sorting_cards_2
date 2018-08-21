class Deck
  require 'pry'
  attr_reader :cards


  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def sort_based_on_index
  (@cards.count).times do |index|
  while cards[index].value > cards[index+1].value
    cards[index], cards[index + 1] = cards[index + 1], cards[index]
  end
   end
  end


  # def card_values_as_strings
  #   @cards.map do |card|
  #     card.value
  #   end
  # end
  #
  # def card_values_as_integers
  #   card_values_as_strings.map do |card|
  #     card.to_i
  #   end
  # end

  # def swap_the_values
  #   card_values_a



    # while @cards[0].value > @cards[1].value
    #   @cards[0], @cards[1] = @cards[1], @cards[0]
    #  return @cards[0], @cards[1]
    # end


end
