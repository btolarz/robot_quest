class Position

  attr_accessor :x, :y

  def initialize(x=0,y=0)
    @x = x
    @y = y
  end

  def valid_position(var,point)
    (0..5).to_a.include? var + point
  end

  def move(facing)
    case facing.to_s
    when 'NORTH'
      @y += 1 if valid_position(@y,1)
    when 'EAST'
      @x += 1 if valid_position(@x,1)
    when 'SOUTH'
      @y -= 1 if valid_position(@y,-1)
    when 'WEST'
      @x -= 1 if valid_position(@x,-1)
    end
    return x,y
  end
end