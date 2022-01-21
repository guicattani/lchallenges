require_relative '../5/symmetrical_difference'
require 'spec_helper'

describe "Symmetrical Difference" do
  it 'returns the symmetrical difference of two arrays' do
    expect(symmetrical_difference([1,2,3], [3,4])).to eq([1,2,4])
    expect(symmetrical_difference([3,4], [1,2,3])).to eq([1,2,4])
    expect(symmetrical_difference([1], [1])).to eq([])
    expect(symmetrical_difference((1..101).to_a, [1])).to eq(nil)
    expect(symmetrical_difference([1], (1..101).to_a)).to eq(nil)
  end

  it 'returns a if b is nil' do
    expect(symmetrical_difference([1,2,3], nil)).to eq([1,2,3])
  end
  it 'returns b if a is nil' do
    expect(symmetrical_difference(nil, [1,2,3])).to eq([1,2,3])
  end

  it 'returns nil if both arguments are nil' do
    expect(symmetrical_difference(nil, nil)).to eq(nil)
  end
end