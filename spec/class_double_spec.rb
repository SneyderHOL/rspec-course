class Deck
  def self.build
    # Business logic to build a whole bunch of cards
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end
RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # simulates the class Deck and its method build
    # use 'Deck' if the class is not define yet
    # class_double(Deck, build: ['Ace', 'Queen'])
    # ensure that deck is used throughout the example
    deck_klass = class_double(Deck, build: ['Ace', 'Queen']).as_stubbed_const

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(['Ace', 'Queen'])
  end
end
