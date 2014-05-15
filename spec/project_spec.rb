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


end


