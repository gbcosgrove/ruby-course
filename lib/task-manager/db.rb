module TM

  class DB

  end

  def self.db
    @__db_instance ||= TM::DB.new
  end

end

