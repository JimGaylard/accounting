require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty"
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "--tag @focus"
end

RSpec::Core::RakeTask.new(:allspec) do |t|
  t.rspec_opts = "-f d"
end

task :default => [:spec]
