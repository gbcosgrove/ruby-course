# require 'spec_helper'

# # Expectations
# # A task has a description
# # A task has a date created
# # A task has a complete status
# # A task has a priority

describe 'Task' do

  it "exists" do
    expect(TM::Task).to be_a(Class)
  end

  it "requires you to enter a description" do
    expect { TM::Task.description }.to raise_error
  end

  it "adds a timestap when it is created" do
    expect(TM::Task.new("My New Task").created.to_i).to eq(Time.now.to_i)
  end

  it "has a complete status that begins at false" do
    my_task = TM::Task.new("My New Task")
    expect(my_task.complete).to eq(false)
  end

  it "has a priority number and defaults to 1" do
    expect(TM::Task.new("Task", 3).priority).to eq(3)
    expect(TM::Task.new("Task2").priority).to eq(1)
  end

  it "can update it's description" do
    test1 = TM::Task.new("Task")
    test1.update_description("updated task")
    expect(test1.description).to eq("updated task")
  end

  it "can change it's priority" do
    test1 = TM::Task.new("test")
    test1.change_priority(2)
    expect(test1.priority).to eq(2)
  end


end
