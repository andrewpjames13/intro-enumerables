def any_empty?(array)
  count = 0
  array.each do |a|
    if a == '' || a == nil
      count += 1
    end
  end
  if count > 0
    true
  else
    false
  end
end
# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#any_empty?' do
  it 'returns true if there are empty strings anywhere in the array' do
    input = ['a', '', 'b']

    expect(any_empty?(input)).to eq(true)
  end

  it 'returns true if there are nils anywhere in the array' do
    input = ['a', nil, 'b']

    expect(any_empty?(input)).to eq(true)
  end

  it 'returns false if all values are non-empty' do
    input = ['fa', 'la']

    expect(any_empty?(input)).to eq(false)
  end

  it 'returns false when given an empty array' do
    expect(any_empty?([])).to eq(false)
  end
end
