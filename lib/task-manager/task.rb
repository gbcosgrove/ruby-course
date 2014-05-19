
class TM::Task

attr_reader :id, :project_id, :description, :priority, :complete, :created


# def initialize(id, project_id, description, priority, complete, created)
#   @id = id
#   @project_id = project_id
#   @description = description || "New task"
#   @priority = priority || 1
#   @complete = complete || false
#   @created = created || Time.now
# end

def initialize(data)
  @id = data[:id]
  @project_id = data[:project_id]
  @description = data[:description] || "New task"
  @priority = data[:priority] || 1
  @complete = data[:complete] || false
  @created = data[:created] || Time.now
end


end
