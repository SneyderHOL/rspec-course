RSpec.describe Hash do
  # Using subject gives specific shorthand syntax
  subject(:bob) do
    { a: 1, b: 2 }
  end

  # It is ok to use let
  #let(:bob) { { a: 1, b: 2 } }

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end
