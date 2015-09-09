require 'spec_helper'
require 'robot'

RSpec.describe Robot do

  subject(:robot) { Robot.new }

  context 'not placed' do

    it 'is not placed' do
      expect(robot.placed).to be false
    end

    it 'not move up' do
      expect {robot.move}.not_to change {robot.position.y}
    end

    it 'cant turn' do
      expect {robot.left}.not_to change {robot.facing.to_s}
      expect {robot.right}.not_to change {robot.facing.to_s}
    end

    it 'report no position' do
      expect {robot.report}.to output('[]').to_stdout
    end

  end

  context 'placed' do
    before do
      robot.place
    end

    it 'turning' do
      expect {robot.left}.to change {robot.facing.to_s}
      expect {robot.right}.to change {robot.facing.to_s}
    end

    it 'moving' do
      expect {robot.move}.to change {robot.position.y}
    end

    it 'report default position' do
      expect {robot.report}.to output('[0, 0, "NORTH"]').to_stdout
    end
  end

end