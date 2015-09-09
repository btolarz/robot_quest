require 'rubygems'
require 'bundler/setup'

require './lib/cli'
require './lib/position'
require './lib/facing'
require './lib/robot'

module App

  extend CLI

end

App.start