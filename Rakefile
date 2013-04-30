require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'

desc "runs all features marked with @wip"
Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty --tags @wip"
end

Cucumber::Rake::Task.new(:allfeatures) do |t|
  t.cucumber_opts = "features --format progress"
end

RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = "--tag @focus"
end

RSpec::Core::RakeTask.new(:allspec) do |t|
  t.rspec_opts = "-f d"
end

task :default => [:spec]
