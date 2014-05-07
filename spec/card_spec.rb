require 'spec_helper'

require 'deck'

describe Card do
  it 'has a particular rank and suit' do
    card = Card.new('5' , :clubs)
    card.rank.must_match '5'
    card.suit.must_match :clubs
  end
end

describe Deck do
  it 'has 52 cards' do
    deck = Deck.new
    deck.size.must_match 52
  end
  it 'will contain 51 cards after dealing a card' do
    deck = Deck.new
    deck.deal!
    deck.size.must_match 51
  end
end
