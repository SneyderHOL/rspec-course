class Card
  attr_reader :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # before(:example)  is the same as before do
  # symbol could also be :suit, :context
  before do
    @card = Card.new('Ace', 'Spades') 
  end

  # 'specify' alias for 'it'
  it 'has a rank' do
    expect(@card.rank).to eq('Ace')
  end

  it 'has a suit' do
    expect(@card.suit).to eq('Spades')
  end
end
