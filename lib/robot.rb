class Robot

  DEFAULTS = [0,0,'NORTH']

  attr_accessor :position, :facing, :placed

  def initialize(position = DEFAULTS)
    @position = Position.new(position[0],position[1])
    @facing = Facing.new
    @placed = false
  end

  def place
    @placed = true
  end

  def put_on_place(arr)
    return unless @placed
    arr = arr.split(',')
    @position.x = arr[0].to_i
    @position.y = arr[1].to_i
    @facing.set(arr[2])
  end

  def move
    return unless @placed
    @position.move(facing)
    self
  end

  def left
    return unless @placed
    @facing.left
    self
  end

  def right
    return unless @placed
    @facing.right
    self
  end

  def report
    print @placed ? [@position.x, @position.y, @facing.to_s] : []
  end

end