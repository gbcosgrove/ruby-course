require 'spec_helper.rb'


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
      xit "returns a project entity with the proper data" do

      end

      xit "returns nil if the project doesn't exist" do

      end
    end
  end


end
