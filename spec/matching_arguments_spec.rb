RSpec.describe 'matching arguments' do
  it 'can return different values depending on the argument' do
    # emulate the behaviour of a real 3 element array
    three_element_array = double # [1, 2, 3]
    # with allows to specify exactly what argument we expect to get
    # and what return in case that argument being provided
    allow(three_element_array).to receive(:first).with(no_args).and_return(1)
    # with(1) doesn't represent the number of the count of arguments
    # it represents what argument is being given
    allow(three_element_array).to receive(:first).with(1).and_return([1])
    allow(three_element_array).to receive(:first).with(2).and_return([1, 2])
    allow(three_element_array).to receive(:first).with(be >= 3).and_return([1, 2, 3])

    expect(three_element_array.first).to eq(1)
    expect(three_element_array.first(1)).to eq([1])
    expect(three_element_array.first(2)).to eq([1, 2])
    expect(three_element_array.first(3)).to eq([1, 2, 3])
    expect(three_element_array.first(100)).to eq([1, 2, 3])
  end
end
