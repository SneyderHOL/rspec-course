class Card
  attr_reader :type

  def initialize(type)
    @type = type
  end
end

RSpec.describe Card do
  # 'specify' alias for 'it'
  it 'has a type' do
    card = Card.new('Ace of Spade')
    expect(card.type).to eq('Ace of Spade')
  end
end
