require "bundler/gem_tasks"
require "rake"
require "rake/testtask"

task :default => [:test]

Rake::TestTask.new do |t|
  t.pattern = 'spec/*_spec.rb'
  t.libs.push 'spec'
  t.libs.push 'lib'
end
