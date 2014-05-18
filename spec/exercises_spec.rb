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
    expect(Exercises.ex3(exercise3)).to eq(15)
  end
end

describe 'Exercise 4' do
  it 'Returns the max number of the given array of numbers' do
    exercise4 = [4, 8, 3, 12, 7]
    expect(Exercises.ex4(exercise4)).to eq(12)
  end
end

describe '.ex5' do
  it "should call puts with the element of a 1 element array" do
  STDOUT.should_receive(:puts).with(10)
  Exercises.ex5([10])
  end
end


describe 'Exercise 6' do
  it 'updates the last value in the array to panda' do
    array = ["bear", "monkey"]
    Exercises.ex6(array)
    expect(array.last).to eq("panda")

    array = ["bear", "monkey", "panda"]
    Exercises.ex6(array)
    expect(array.last).to eq("godzilla")
  end
end

describe 'Exercise 7' do
  it 'adds str to the array if str does not exist' do
    array = ["foo", "bar", "biz", "bazz"]
    string = "bar"
    expect(Exercises.ex7(array, string).last).to eq("bar")

    string = "buzz"
    expect(Exercises.ex7(array, string).last).to eq("bar")
  end
end

describe 'Exercise 8' do
  it "it iterates through hash 'people and prints out their name and occupation" do
    STDOUT.should_receive(:puts).with("Bob: Builder")

    people = [{:name => "Bob", :occupation => "Builder"}]

    Exercises.ex8(people)
  end
end
# binding.pry


describe 'Exercise 9' do
  it 'it returns true if the given time is in a leap year' do
    time = Time.now
    expect(Exercises.ex9(time)).to eq(false)
  end
end
