

module TM
  class DB
  end

  def self.DB
    @__db_instance.nil? ||= TM::DB.new
  end

end
