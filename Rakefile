# frozen_string_literal: true

require "bundler/gem_tasks"
require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: :rubocop

require "rake/testtask"
Rake::TestTask.new(:functional) do |t|
  t.test_files = FileList["test/functional/*_test.rb"]
end

Rake::TestTask.new(:unit) do |t|
  t.test_files = FileList["test/unit/**/*_test.rb"]
end

desc "Default: run all tests."
task default: %i[unit functional]
