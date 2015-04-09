def count_words_longer_than(words, length)
  wordLength = words.map do |word|
                word.length
                end
  array = []
  wordLength.each do |l|
    if l > length
      array << l
    end
  end
  array.count
end

# ------ code above this line ------

require 'rspec/autorun'

RSpec.describe '#count_words_longer_than' do
  it 'returns the count of words that are longer than the specified max' do
    expect(count_words_longer_than(['a', 'big', 'black', 'bear', 'is', 'running'], 3)).to eq(3)
    expect(count_words_longer_than(['a', 'big', 'black', 'bear', 'is', 'running'], 2)).to eq(4)
    expect(count_words_longer_than(['a', 'big', 'black', 'bear', 'is', 'running'], 10)).to eq(0)
  end

  it 'returns 0 for an empty array' do
    expect(count_words_longer_than([], 0)).to eq(0)
  end
end
