require 'rspec'
require 'pry'

require "./LomutoQuicksorter"
require "./HoareQuicksorter"

describe 'LomutoQuicksort'  do
  it 'sorts an unordered array' do
    result = LomutoQuicksorter.new([4,5,3,2,1]).sort
    expect(result).to eq([1,2,3,4,5])
  end

  it 'sorts an ordered array' do
    result = LomutoQuicksorter.new([1,2,3,4,5]).sort
    expect(result).to eq([1,2,3,4,5])
  end
end

describe 'HoareQuicksort'  do
  it 'sorts an unordered array' do
    result = HoareQuicksorter.new([4,5,3,2,1]).sort
    expect(result).to eq([1,2,3,4,5])
  end

  it 'sorts an ordered array' do
    result = HoareQuicksorter.new([1,2,3,4,5]).sort
    expect(result).to eq([1,2,3,4,5])
  end
end