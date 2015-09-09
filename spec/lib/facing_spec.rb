require 'spec_helper'
require 'facing'

RSpec.describe Facing, type: :model do

  subject(:facing) { Facing.new }

  it 'has initial direction index 0' do
    expect(facing.direction_index).to eq 0
  end

  it 'has initial direction NORT' do
    expect(facing.to_s).to eq 'NORTH'
  end

  it 'set new direction index' do
    expect do
      facing.set('EAST')
    end.to change(facing, :direction_index).to 1
  end

  it 'can turn left when NORTH' do
    expect do
      facing.left
    end.to change(facing, :direction_index).to 3
  end

  it 'can turn right when WEST' do
    facing.direction_index = 3
    expect do
      facing.right
    end.to change(facing, :direction_index).to 0
  end



end
