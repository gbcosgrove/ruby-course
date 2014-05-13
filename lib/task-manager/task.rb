
class TM::Task

attr_reader :description, :created, :complete, :priority


def initialize(description, priority=1)
  @description = description
  @created = Time.now
  @complete = false
  @priority = priority
end

def update_description(update)
  @description = update
end

def change_priority(change)
  @priority = change
end


end
