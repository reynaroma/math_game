class Player
  attr_reader :name, :score, :lives
  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def increase_score(points)
    @score += points
  end

  def decrement_lives
    @lives -= 1
  end

  def has_lives?
    @lives > 0
  end

  def total_lives
    3
  end
end