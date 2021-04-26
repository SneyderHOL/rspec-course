class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # before(:example)  is the same as before do
  # symbol could also be :suit, :context
  # before do
  #   @card = Card.new('Ace', 'Spades')
  # end
  # def card
  #   Card.new('Ace', 'Spades')
  # end
  # let!() -> variable needs to be created before an example runs
  let(:card) { Card.new('Ace', 'Spades') }

  # 'specify' alias for 'it'
  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead!"
  end
end
