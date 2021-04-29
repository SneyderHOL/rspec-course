# spies are an alternate type of test double, the difference is the different
# pattern that follows when testing
# for double we write our expectations before the do anything with our class
# or object
# for spies we assert a message  has been received after the action or method
# been invoked
RSpec.describe 'spies' do
  let(:animal) { spy('animal') }

  it 'confirms that a message has been received' do
    animal.eat_food
    expect(animal).to have_received(:eat_food)
    expect(animal).not_to have_received(:eat_human)
  end

  it 'resets between examples' do
    expect(animal).not_to have_received(:eat_food)
  end

  it 'retains the same functionality of a regular double' do
    animal.eat_food
    animal.eat_food
    animal.eat_food('Sushi')
    expect(animal).to have_received(:eat_food).exactly(3).times
    expect(animal).to have_received(:eat_food).at_least(2).times
    expect(animal).to have_received(:eat_food).with('Sushi')
    expect(animal).to have_received(:eat_food).once.with('Sushi')
  end
end
