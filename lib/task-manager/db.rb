module TM

  class DB

  end

  def self.db
    @__db_instance ||= TM::DB.new
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

