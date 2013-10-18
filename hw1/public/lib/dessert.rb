class Dessert
  attr_accessor :calories, :name, :flavor
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    (@calories > 199) ? false : true
  end
  def delicious?
    #(@flavor=="licorice") ? false : true
    true
  end
end

class JellyBean < Dessert
  #attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = flavor + " jelly bean"
  end

  def delicious?
    (@flavor=='licorice' ) ? false : true
  end
end
nil

# hb = JellyBean.new('licorice')
# puts hb.delicious?
