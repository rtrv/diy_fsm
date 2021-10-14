# frozen_string_literal: true

require "bundler/gem_tasks"
require "rubocop/rake_task"
require "rake/testtask"

RuboCop::RakeTask.new

Rake::TestTask.new(:test_bundle) do |t|
  t.test_files = FileList["test/*_test.rb"]
end

desc "Default: run all tests."
task default: %i[rubocop test_bundle]
