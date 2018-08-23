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


  def sort_small_values(cards)
    (@cards.length-1).times do |index|
    while @cards[index].value > @cards[index +1].value
      @cards[index], @cards[index +1] = @cards[index +1], @cards[index]
    end
  end
  return @cards
  end

  def sort_based_on_suit(cards)
    @suits = {Clubs: 1,
             Diamonds: 2,
             Hearts: 3,
             Spades: 4}

    (@cards.count-1).times do |index|
      while @suits[cards[index].suit.to_sym] > @suits[cards[index+1].suit.to_sym]
        cards[index], cards[index + 1] = cards[index + 1], cards[index]
      end
      return cards
    end
  end

  def sort_face_values(cards)
      @value = {Ace: 14,
               King: 13,
               Queen: 12,
               Jack: 11}

    (@cards.count-1).times do |index|
      while @value[cards[index].value.to_sym] > @value[cards[index+1].value.to_sym]
        cards[index], cards[index + 1] = cards[index + 1], cards[index]
      end
      return cards
    end
  end

  def sort
    sort_face_values(cards)
    sort_small_values(cards)
    sort_based_on_suit(cards)
  end

end
