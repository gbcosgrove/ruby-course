require 'spec_helper'


describe 'Project' do
  before(:each) do
    TM::Project.reset_class_variables
  end

xit "exists" do
  expect(TM::Project).to be_a(Class)
end

xit "generates a creation date when initialized" do
 @created = Time.parse("Feb 24 1981")
  Time.stub(:now).and_return(@created)
end

xit "creates an empty hash when initialized" do
  new_project = TM::Project.new
  expect(new_project).to be_a(Hash)
end

xit "generates a unique ID at when initialized" do
  project_1 = TM::Project.new
  project_2 = TM::Project.new
  expect(project_1.id).should_not eql(project_2.id)
end

xit "creates a default name for project when no project name is given" do
  project_3 = TM::project.new
  expect(project_3.name).to be("my new project")
end

xit "add project name user provides" do
  project_4 = TM::project.new("write rspec")
  expect(project_4.name).to be("write rspec")
end


xit "deletes projects" do
  project_5 = TM::project.new
  project_5.delete
  expect(project_5.name).to raise_error
end





#   it "exists" do
#     expect(TM::Project).to be_a(Class)
#   end

#   it "adds a date created at initiation" do
#     @created = Time.parse("Feb 24 1981")
#     Time.stub(:now).and_return(@created)
#   end

# ## Refactor Test for hashes
#   it "creates an empty array at initalization" do
#     new_project = TM::Project.new
#     expect(new_project.task_list).to eq([])
#   end


#   it "gives new project without name specified default name 'New Project'" do
#     expect(TM::Project.new.name).to eq("New Project - 1")
#   end



#   it "it gives the project a unique id number" do
#     new_project_1 = TM::Project.new
#     new_project_2 = TM::Project.new
#     # expect(new_project_1.id).should_not == new_project_2.id
#     expect(new_project_1.id).to eq(1)
#     expect(new_project_2.id).to eq(2)
#   end

#   it "take name arugment of new project instance" do
#     test_project = TM::Project.new("Cleaning")
#     expect(test_project.name).to eq("Cleaning - 1")
#   end

#   it "adds project to class instances array" do
#     TM::Project.new("Project")
#     TM::Project.new("Project")
#     expect(TM::Project.project_list).to eq(["Project - 1", "Project - 2"])
#   end


end


