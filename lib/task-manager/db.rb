require 'pry'

module TM

  class DB

    attr_reader :projects, :project_count, :pid, :task_count, :tid, :priority, :created, :complete

    def initialize
      @projects = {}
      @project_count = 0
    end

    def create_project(data)
      @project_count += 1
      @task_count = 0
      @tasks = {}
      data[:pid] = @project_count
      @projects[ data[:pid] ] = data
      TM::Project.new(data[:name], data[:pid])
    end

    def get_project(id)
      data = @projects[id]
      if !data.nil?
        TM::Project.new(data[:name], data[:pid])
      end

    end

    def update_project(id, data)
      old_data = @projects[id]
      old_data.merge!(data)
    end

    def destroy_project(id)
      @projects.delete(id)
    end

    def create_task(pid, data)
      @task_count += 1
      data[:tid] = @task_count
      @tasks[ data[:tid] ] = data
      task = TM::Task.new(data[:description], data[:priority])
      @project[pid] = task
    end

  end

  def self.db
    @__db_instance ||= TM::DB.new
  end

end

