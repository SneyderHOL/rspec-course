RSpec.describe 'raise_error matcher' do
  
  def some_method
    x
  end

  # custom error
  class CustomError < StandardError; end

  # capture any error, rspec gives a warning message about it
  # it 'can check for any error' do
  #   expect { some_method }.to raise_error
  # end

  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for a user-created error' do
    expect { raise CustomError }.to raise_error(CustomError)
  end
end
