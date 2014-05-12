

class TM::Project

attr_reader :name, :created

def initialize(name="New Project")
  @name = name
  @created = Time.now
end

end
