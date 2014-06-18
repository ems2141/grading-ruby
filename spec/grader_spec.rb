require 'spec_helper'
require_relative '../lib/grader'

describe Grader do
  it 'returns an empty array if given an empty array' do
    input = []
    expected = []

    expect(Grader.new(input).process).to eq expected
  end

  it 'processes whether a list of grades went up, down, or stayed the same' do
    input = [6,3,5,4,3,4,4,5]
    expected = [:down,:up,:down,:down,:up,:even,:up]

    expect(Grader.new(input).process).to eq expected
  end

  describe 'finding students in decline' do
    it 'determines whether a student is in decline based on whether they have 3 grades lower than previous grades' do
      input = [10, 9, 8, 7]
      expected = "in decline"

      expect(Grader.new(input).find_in_decline).to eq expected
    end

    it 'returns in decline even if one grade goes up' do
      input = [10, 9, 12, 8, 7]
      expected = "in decline"

      expect(Grader.new(input).find_in_decline).to eq expected
    end
  end
end