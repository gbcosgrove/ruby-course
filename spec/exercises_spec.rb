require "./exercises.rb"
#require "spec_helper"

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
  it "returns the number of elements in the array" do
    expect(Exercises.ex1([])).to eq(0)
    expect(Exercises.ex1([1,2,3])).to eq(3)
  end
end

describe 'Exercise 2' do
  it "returns the second element of an array" do
    expect(Exercises.ex2([5,10,15,20])).to eq(10)
  end
end

describe 'Exercise 3' do
  it 'returns the sum of the given array of numbers' do
    exercise3 = [1, 2, 3, 4, 5]
    expect(exercise3)
  end
end

describe 'Exercise 4' do
  xit 'Returns the max number of the given array of numbers' do
  end
end

describe '.ex5' do
  it "should call puts with the element of a 1 element array" do
  STDOUT.should_receive(:puts).with(10)
  Exercises.ex5([10])
  end
end

describe 'Exercise 6' do
  xit 'updates the last it in the array to panda' do
  end
end

describe 'Exercise 7' do
  xit 'adds str to the array if str does not exist' do
  end
end

describe 'Exercise 8' do
  xit "it iterates through hash 'people and prints out their name and occupation" do
  end
end

describe 'Exercise 9' do
  xit 'it returns ture if the given time is in a leap year' do
  end
end
