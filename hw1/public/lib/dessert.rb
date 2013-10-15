class Dessert
  attr_accessor :calories, :name
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    (@calories > 75) ? false : true
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    # your code here
  end
end
