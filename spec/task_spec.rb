require 'spec_helper'

describe 'Task' do
 #   before(:each) do
 #   new_task = TM::Task.new("Write Spec")
 # end


  xit "exists" do
    expect(TM::Task).to be_a(Class)
  end

  xit "initalizes with a description" do
    new_task = TM::Task.new("Write Spec")
    expect(new_task.description).to eq("Write Spec")

  end

  xit "intializes with the correct time stamp" do
     @created = Time.parse("Feb 24 1981")
    Time.stub(:now).and_return(@created)
  end

  xit "initalizes with a time created" do
    expect { TM::Task.new.created }.to_not raise_error
  end

  xit "initalizes with as default priority of 1" do
    expect(TM::Task.new.priority).to eq(1)
  end

  xit "adds priority provided by user" do
    my_task = TM::Task.new("my task", 3) do
    expect(my_task.priority).to eq(3)
  end

  xit "adds a task id" do
    expect { TM::Task.new.id }.to_not raise_error
  end

  xit "adds a unique id task" do
    task_one = TM::Task.new
    task_two = TM::Task.new
    expect(task_one.id).should_not eql(task_two.id)
  end

  xit "intializes with a state of not complete" do
    expect(TM::Task.new.active).to eq(true)
  end

  xit "it can be marked complete" do
    task_three = TM::Task.new
    task_three.mark_complete
    expect(task_three.active).to eq(false)
  end

  xit "it's description can be changed" do
    task_four = TM::Task.new("Write RSpec test")
    task_four.update("Update RSpec test")
    expect(task_four.description).to eq("Update RSpec test")
  end

  xit "it's priority can be changed" do
    task_five = TM::Task.new("Edit RSpec test", 3)
    task_five.update_priority(4)
    expect(task_five.priority).to eq(4)
  end

  xit "it is associated with a project" do
    task1 = TM::Task.new
    task2 = TM::Task.new
    task3 = TM::Task.new
    sorted_tasks[0] == task1
    sorted_tasks[1] == task2
    sorted_tasks[2] == task3
  end

  xit "it can be sorted by priority" do
  end

  xit "it can be sorted by date if priority is the same" do
  end



  end
end
