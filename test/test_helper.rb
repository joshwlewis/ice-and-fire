ENV['RACK_ENV'] ||= 'test'
require 'minitest/autorun'
require 'minitap'

Minitest.reporter = Minitap::TapY

require File.expand_path '../../config/environment.rb', __FILE__
