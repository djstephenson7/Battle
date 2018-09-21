class Player

  DEFAULT_HIT_POINTS = 100

  attr_reader :name, :hitpoint

  def initialize(name, default_hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hitpoint = default_hit_points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage
    @hitpoint -= 10
  end
end
