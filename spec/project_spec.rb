require 'spec_helper'

## Requirements
## Project has a name
## Project has a creation date
## Project is an empty hash at initialization


describe 'Project' do

it "exists" do
  expect(TM::Project).to be_a(Class)
end

it "has a name" do
  expect(TM::Project.name).not_to raise_error
end

it "has a default name when user does not pass a name" do
  expect(TM::Project.new.name).to eq("New Project")
end

it "is timestapped with a creation date" do
  expect(TM::Project.new.created.to_i).to eq(Time.now.to_i)
end


end


