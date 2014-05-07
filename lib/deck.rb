class Card
  attr_reader :rank, :suit
  @@allowed_suits = [:hearts, :clubs, :diamonds, :spades]

  def initialize(rank, suit)
    @rank = rank
    raise unless  @@allowed_suits.include?(suit)
    @suit = suit 
  end
  
end

class Deck
  @@allowed_suits = [:hearts, :clubs, :diamonds, :spades]
  def initialize
    @cards = []
    52.times do
      rank = rand(0..13)
      suit = @@allowed_suits[rand(0..3)]
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
