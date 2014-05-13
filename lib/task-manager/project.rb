

class TM::Project

attr_reader :name, :created, :pid

  def initialize(name="New Project", pid=nil)

    @name = name
    @created = Time.now
    @pid = pid


  end

end
