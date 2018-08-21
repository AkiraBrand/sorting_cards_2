class Deck
  require 'pry'
  attr_reader :cards


  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def sort
    while @cards[0].value > @cards[1].value
      @cards[0], @cards[1] = @cards[1], @cards[0]
     return @cards[0], @cards[1]
    end
  end

end
