class Damage
  attr_accessor :cost, :description

  def initialize(cost, description)
    @cost = cost
    @description = description
  end
end
