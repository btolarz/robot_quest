require 'spec_helper'
require 'position'
require 'facing'

RSpec.describe Position, type: :model do

  subject(:position) { Position.new }
  let(:facing) { Facing.new }


  it 'has default values' do
    expect(position.x).to eq 0
    expect(position.y).to eq 0
  end

  it 'has 0,1 position when move' do
    expect(position.move(facing)).to eq [0,1]
  end

  it 'move right when fancing east' do
    expect do
      facing.right
      position.move(facing)
    end.to change(position, :x).from(0).to(1)
  end

  it 'move left when fancing west' do
    expect do
      position.x = 5
      facing.left
      position.move(facing)
    end.to change(position, :x).to(4)
  end

  it 'move up when fancing north' do
    expect(position.move(facing)).to eq [0,1]
  end

  it 'move down when fancing south' do
    facing.left.left
    position.y = 5
    expect(position.move(facing)).to eq [0,4]
  end

  it 'valid position less than 5' do
    expect(position.valid_position(position.x,1)).to be true
  end

  it 'not valid position more than 5' do
    position.x = 5
    expect(position.valid_position(position.x,1)).to be false
  end

  it 'not move when position more than 5' do
    position.y = 5
    expect(position.move(facing)).to eq [0,5]
  end

end