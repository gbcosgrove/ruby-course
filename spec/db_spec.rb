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

   describe "projects inside db" do
    it "contains storage for projects" do
      expect(TM.db.projects).to be_a(Hash)
    end



    describe "#create_project" do
      let(:project) {TM.db.create_project(:name => "My Project")}

      it "creates a new project entity" do
        expect(project).to be_a(TM::Project)
        expect(project.pid).to be_a(Fixnum)
        expect(project.name).to eq("My Project")
      end

      it "stores information in the db" do
        expect(TM.db.projects[project.pid]).to eq({
          :name => "My Project",
          :pid => project.pid
        })
      end


      it "gives a unique id every time" do
        p1 = TM.db.create_project(:name => "p1")
        p2 = TM.db.create_project(:name => "p1")
        expect(p1.pid).to_not eq(p2.pid)
      end
    end


    describe "#get_project" do
      # before(:each) do
      #   @projects = {}
      #   @project_count = 0
      # end

      it "returns a project entity with the proper data" do
        p1 = TM.db.create_project(:name => "p1")
        p2 = TM.db.create_project(:name => "p1")
        project = TM.db.get_project(p1.pid)
        expect(project).to be_a(TM::Project)
        expect(p1.pid).to eq(project.pid)
        expect(p1.name).to eq(project.name)
      end


      it "returns nil if the project doesn't exist" do
        project = TM.db.get_project(24)
        expect(project).to eq(nil)
      end

    describe "#update_project" do
      it "updates the project in the db" do
        p1 = TM.db.create_project(:name => "p1")
        # t1 = TM.db.create_task(:project_id => 1, :description: "blah", :priority_num => 3)
        TM.db.update_project(p1.pid, :name => "Hello")
        project = TM.db.get_project(p1.pid)
        expect(project.name).to eq("Hello")
        expect(project.pid).to eq(p1.pid)
      end
    end

    describe "#destroy_project" do
      it "destroys project from db" do
        p1 = TM.db.create_project(:name => "p1")
        TM.db.destroy_project(p1.pid)
        project = TM.db.get_project(p1.pid)
        expect(project).to eq(nil)
      end
    end

    describe "#create_task in db" do
      before(:each) do
        @project = {}
        @project_count = 0
      end
      it "creates a new task entity"
        p1 = TM.db.create_project(:name => "p1")
        task = TM.db.create_task(1, {:description => "task1", :priority => 3})
        expect(task.tid).to eq(1)
        exepct(task.priority).to eq(3)
        expect(task.description).to be("task1")
        expect(task.pid).to eq(1)
      end
    end


  end
end
