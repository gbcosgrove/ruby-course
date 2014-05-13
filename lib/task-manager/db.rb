module TM

  class DB

    attr_reader :projects, :project_count, :pid

    def initialize
      @projects = {}
      @project_count = 0
    end

    def create_project(data)
      @project_count += 1
      data[:pid] = @project_count
      @projects[ data[:pid] ] = data
      TM::Project.new(data[:name], data[:pid])
    end

    def get_project(id)
      data = @projects[id]
      if data.nil?
        TM::Project.new(data[:name], data[:pid])
      end
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

