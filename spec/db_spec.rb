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

  describe 'db storing projects' do
    it 'stores the project as a hash' do
      expect(TM.db.projects).to be_a(Hash)
    end
  end


end
