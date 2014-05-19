require 'spec_helper.rb'
require 'pry'

# Expectations
# DB can create a project
# DB can get a project
# DB can update a project
# DB can delete a project


describe TM::DB do
  describe 'db as a singleton' do
    it "returns a DB object" do
      db = TM.db
      expect(db).to be_a(TM::DB)
    end

    it "returns same db object every time" do
      db = TM.db
      db2 = TM.db
      expect(db).to be(db2)
    end
  end
end

describe "Database class" do
  let(:project) {TM.db.create_project(:name => "My Project")}


## Projects - create_project
    it "contains storage for projects" do
      expect(TM.db.projects).to be_a(Hash)
    end


    it "creates a new project entity" do
      expect(project).to be_a(TM::Project)
      expect(project.id).to be_a(Fixnum)
      expect(project.name).to eq("My Project")
    end


    it "stores information in the db" do
      expect(TM.db.projects[project.id]).to eq({
        :name => "My Project",
        :id => project.id
      })
    end


    it "gives a unique id every time" do
      p1 = TM.db.create_project(:name => "p1")
      p2 = TM.db.create_project(:name => "p1")
      expect(p1.id).to_not eq(p2.id)
    end



## Projects = get project

    it "returns a project entity with the proper data" do
      p1 = TM.db.create_project(:name => "p1")
      p2 = TM.db.create_project(:name => "p1")
      project = TM.db.get_project(p1.id)
      expect(project).to be_a(TM::Project)
      expect(p1.id).to eq(project.id)
      expect(p1.name).to eq(project.name)
    end


    it "returns nil if the project doesn't exist" do
      project = TM.db.get_project(24)
      expect(project).to eq(nil)
    end

## Project - update project

    it "updates the project in the db" do
      p1 = TM.db.create_project(:name => "p1")
      # t1 = TM.db.create_task(:project_id => 1, :description: "blah", :priority_num => 3)
      TM.db.update_project(p1.id, :name => "Hello")
      project = TM.db.get_project(p1.id)
      expect(project.name).to eq("Hello")
      expect(project.id).to eq(p1.id)
    end


## Projects - destroy project
    it "destroys project from db" do
      p1 = TM.db.create_project(:name => "p1")
      TM.db.destroy_project(p1.id)
      project = TM.db.get_project(p1.id)
      expect(project).to eq(nil)
    end



## Task - create_tasks

  describe "tasks" do

    before(:each) do
      TM.db.projects = {}
      TM.db.project_count = 0
      TM.db.tasks = {}
      TM.db.task_count = 0
    end

    let(:project) {TM.db.create_project( name: "Write RSpec Test")}
    let(:task) {TM.db.create_task( description: "My Task", priority: 2)}


    it "has an empty tasks hash" do
      expect(TM.db.tasks).to eq({})
    end

    it "takes a description" do
      expect(task.description).to eq("My Task")
    end

    it "takes a priority" do
      expect(task.priority).to eq(2)
    end

## Go back and fix this test. Id method works fine, I've just instantiated a bucn of other tasks.
    it "has a task id" do
      expect(task.id).to eq(1)
    end

    it "has starts with a complete status of false" do
      expect(task.complete).to eq(false)
    end

    it "has a creation date" do
      expect(task.created.to_i).to eq(Time.now.to_i)
    end

## Associate task with project



  end
end





