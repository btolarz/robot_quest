module CLI

  extend self

  def start

    robot = Robot.new
    ARGV.each do |a|
      robot.send a.downcase.to_sym if a =~ /(PLACE|MOVE|LEFT|RIGHT|REPORT)/
      robot.put_on_place(a) if a =~ /\d,\d,(NORTH|EAST|SOUTH|WEST)/
    end

  end

end