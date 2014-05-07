module Suits
  Allowed_suits = [:hearts, :clubs, :diamonds, :spades]
end

class Card
  attr_reader :rank, :suit
  def initialize(rank, suit)
    @rank = rank
    raise unless Suits::Allowed_suits.include?(suit)
    @suit = suit 
  end
end

class Deck
  def initialize
    @cards = []
    52.times do
      rank = rand(0..13)
      suit = Suits::Allowed_suits[rand(0..3)]
      @cards << Card.new(rank, suit)
    end 
  end
  
  def size
    @cards.length
  end

  def deal!
    @cards.pop
  end
end
