require_relative '../3/length_of_last_word'
require 'spec_helper'

describe "Length of last word" do
  it 'returns the length of the last word' do
    expect(length_of_last_word('Hello World')).to eq(5)
    expect(length_of_last_word(' fly me  to  the moon   ')).to eq(4)
    expect(length_of_last_word('luffy is still joyboy')).to eq(6)
  end

  it 'ignores empty strings' do
    expect(length_of_last_word('')).to eq(nil)
  end

  it 'ignores long strings' do
    expect(length_of_last_word(''.ljust(104, 'a'))).to eq(nil)
  end
end