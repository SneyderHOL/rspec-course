RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # syntax format 1
    # stuntman = double("Mr. Danger", { fall_off_ladder: 'Ouch', light_on_fire: true })
    # expect(stuntman.fall_off_ladder).to eq('Ouch')
    # expect(stuntman.light_on_fire).to eq(true)

    # syntax format 2
    # advantage of this one is generate strings, customize and add methods
    # stuntman = double("Mr. Danger")
    # allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    # expect(stuntman.fall_off_ladder).to eq('Ouch')

    # syntax format 3
    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(
      fall_off_ladder: 'Ouch',
      light_on_fire: true
    )
    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to eq(true)
  end
end
