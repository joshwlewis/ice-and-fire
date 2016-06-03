require 'rubygems'
require 'bundler/setup'
require 'sinatra'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))
APP_NAME = APP_ROOT.basename.to_s

configure do
  set :root, APP_ROOT.to_path
end

Dir.glob(APP_ROOT + 'lib/*/*.rb') { |file| puts file; require file }
require APP_ROOT.join('lib', 'main')
