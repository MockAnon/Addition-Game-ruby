class Player
  MAX_HEALTH = 3
  attr_reader :name, :health
  def initialize(name)
    @name = name
    @health = MAX_HEALTH
    # @actor = actor
  end

  def dead?
    @health <= 0
  end

  def take_damage
    @health -= 1
  end
end