require 'pry'

module TM

  class DB

    attr_reader :projects, :tasks, :project_count, :task_count, :id

    def initialize
      @projects = {}
      @project_count = 0
      @tasks = {}
      @task_count = 0
    end

    def create_project(data)
      @project_count +=1
      data[:id] = @project_count
      @projects[ data[:id] ] = data
      project = TM::Project.new(data[:name], data[:id])
    end

    def get_project(id)
      data = @projects[id]
      if !data.nil?
        TM::Project.new(data[:name], data[:id])
      end

    end

    def update_project(id, data)
      old_data = @projects[id]
      old_data.merge!(data)
    end

    def destroy_project(id)
      @projects.delete(id)
    end

    def create_task(data)
      increment_task_id
      task = TM::Task.new(data[:description], data[:priority])
    end

    def create_tasks_hash
      @tasks = {}
    end

    def increment_task_id
      @task_id += 1
    end

  end

  def self.db
    @__db_instance ||= TM::DB.new
  end

end

