require 'spec_helper'
require_relative '../lib/grader'

describe Grader do
  it 'returns an empty array if given an empty array' do
    input = []
    expected = []

    expect(Grader.new(input).process).to eq expected
  end
end