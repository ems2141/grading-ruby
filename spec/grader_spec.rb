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
end