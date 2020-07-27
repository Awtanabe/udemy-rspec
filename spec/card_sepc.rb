require_relative '../lib/Card'

RSpec.describe 'Card' do
  it 'has a type' do
    card = Card.new('Ace of Spades','Ace')
    expect(card.rank).to eq('Ace of Spades')
  end

  it 'has a rank' do
    card = Card.new('Ace of Spades','Ace')
    expect(card.suit).to eq('Ace')
  end
end

