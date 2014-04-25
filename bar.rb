require 'time' # you're gonna need it

class Bar
  attr_reader :name
  attr_reader :menu_items

  def initialize(name="The Irish Yodel")
    @name = name
    @menu_items = []
  end
end
