class Facing

  attr_accessor :direction_index

  DIRECTIONS = %w(NORTH EAST SOUTH WEST)

  def initialize
    @direction_index = 0
  end

  def set(direction)
    @direction_index = DIRECTIONS.index direction
  end

  def left
    @direction_index = @direction_index == 0 ? 3 : @direction_index - 1
    self
  end

  def right
    @direction_index = @direction_index == 3 ? 0 : @direction_index + 1
    self
  end

  def to_s
    DIRECTIONS[@direction_index]
  end

end