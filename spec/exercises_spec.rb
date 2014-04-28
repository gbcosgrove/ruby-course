require "./exercises.rb"
#require 'spec_helper'

describe 'Exercise 0' do
  it "triples the length of a string" do
    result = Exercises.ex0("ha")
    expect(result).to eq("hahaha")
  end

  it "returns 'nope' if the string is 'wishes'" do
    result = Exercises.ex0("wishes")
    expect(result).to eq("nope")
  end
end

describe 'Exercise 1' do
  xit "returns the number of elements in the array" do
    array = Exercises.ex1([1, 2, 3, 4, 5])
    expect(array.length).to eq(5)
  end
end


describe '.ex5' do
  it "should call puts with the element of a 1 element array" do
  STDOUT.should_receive(:puts).with(10)
  Exercises.ex5([10])
  end
end
