# require 'spec_helper'

# # Expectations
# # A task has a description
# # A task has a date created
# # A task has a complete status
# # A task has a priority

describe 'Task' do

let(:task) {TM::Task.new(1, 1, "My Project", 2, false, Time.now)}

  it "exists" do
    expect(TM::Task).to be_a(Class)
  end

  it "requires you to enter a description" do
    expect { TM::Task.description }.to raise_error
  end

  it "adds a timestap when it is created" do
    expect(task.created.to_i).to eq(Time.now.to_i)
  end

  it "has a complete status that begins at false" do
    expect(task.complete).to eq(false)
  end

  it "takes a priority number" do
    expect(task.priority).to eq(2)
  end



end
