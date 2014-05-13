module TM

  class DB

    attr_reader :projects

    def initialize
      @projects = {}
    end

    def create_project
    end

    def get_project
    end

    def update_project
    end

    def delete_project
    end

  end

  def self.db
    @__db_instance ||= TM::DB.new
  end

end

