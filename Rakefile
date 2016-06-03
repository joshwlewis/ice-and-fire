require 'rake'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.pattern = 'test/**/*_test.rb'
  t.verbose = false
  t.ruby_opts = ["-W0"]
  t.options = "| grep -e '^[^/]' | tapout tap"
end

task :default => :test
