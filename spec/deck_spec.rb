require 'spec_helper'

require 'deck'

describe Card do
  it 'has a particular rank and suit' do
    card = Card.new('5' , :clubs)
    card.rank.must_equal '5'
    card.suit.must_equal :clubs
  end
end

describe Deck do
  before do
    @deck = Deck.new
  end

  it 'has 52 cards' do
    @deck.size.must_equal 52
  end
  it 'will contain 51 cards after dealing a card' do
    @deck.deal!
    @deck.size.must_equal 51
  end
end
