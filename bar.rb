require 'time' # you're gonna need it

class Bar
  attr_reader :name, :menu_items
  attr_writer :hours


  def initialize(name="The Irish Yodel")
    @name = name
    @menu_items = []
    @happy_discount = happy_discount
  end

  def happy_discount
    if happy_hour?
       return @happy_discount
    else
      return 0
    end
  end

  def happy_discount=(happy_discount)
    if happy_discount >= 0 && happy_discount < 1
      @happy_discount = happy_discount
    elsif happy_discount >= 1
      @happy_discount = 1
    elsif happy_discount < 0
      @happy_discount = 0
    end
  end

  def hours
    @hours = Time.now.hour
  end


  def add_menu_item(item, price)
    @menu_items << Food.new(item, price)
  end

  def happy_hour?
    @hours == 15 ? true : false
  end

class Food
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

end

end

