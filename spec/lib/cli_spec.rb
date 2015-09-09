require 'spec_helper'
require 'cli'

RSpec.describe CLI do

  it 'respond to start' do
    expect(CLI).to respond_to(:start)
  end

end
