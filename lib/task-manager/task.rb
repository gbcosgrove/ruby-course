
class TM::Task

attr_reader :id, :project_id, :description, :priority, :complete, :created


def initialize(id, project_id, description, priority, complete, created)
  @id = id
  @project_id = project_id
  @description = description
  @priority = priority
  @complete = complete
  @created = created
end


end
