require_relative '../1/longest_same_char_substring'
require 'spec_helper'

describe "Longest same char substring" do
  it 'returns the longest same char substring' do
    expect(longest_same_char_substring('Pressuuuuure')).to eq('uuuuu')
    expect(longest_same_char_substring('Pressuure')).to eq('ss')
    expect(longest_same_char_substring('Boat')).to eq('B')
    expect(longest_same_char_substring('A hot  dog')).to eq('  ')
    expect(longest_same_char_substring('')).to eq(nil)
  end
end