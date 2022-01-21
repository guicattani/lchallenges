require_relative '../2/subset_of_maximum_sum'
require 'spec_helper'

describe "Subset of maximum sum" do
  it 'returns the subset of maximum sum' do
    expect(subset_of_maximum_sum([2, -4, 6, 8, -10, 100, -6, 5])).to   eq([2,5])
    expect(subset_of_maximum_sum([2, -4, 6, 8, -10, 100, 99, -5])).to  eq([2,6])
    expect(subset_of_maximum_sum([2, -4, 6, 8, -10, 100, 99, 5])).to   eq([2,7])
    expect(subset_of_maximum_sum([-10, 4, 6, 8, -10, 100, 99, 6])).to  eq([1,7])
    expect(subset_of_maximum_sum([10, 4, 6, 8, -10, 100, 99, 6])).to   eq([0,7])

    expect(subset_of_maximum_sum([-1, 100, -1])).to   eq([1,1])
    expect(subset_of_maximum_sum([1, 100, -1])).to    eq([0,1])
    expect(subset_of_maximum_sum([-1, 100, 1])).to    eq([1,2])

    expect(subset_of_maximum_sum([])).to   eq([0,0])
  end
end