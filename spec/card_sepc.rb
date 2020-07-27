require_relative '../lib/Card'

RSpec.describe 'Card' do
  before do
    @card = Card.new('Ace of Spades','Ace')    
  end

  it 'has a type' do
    expect(@card.rank).to eq('Ace of Spades')
  end

  it 'has a rank' do
    expect(@card.suit).to eq('Ace')
  end
end

