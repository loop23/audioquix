require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :default => :test

require "rake/extensiontask"

Rake::ExtensionTask.new("audioquiz") do |ext|
  ext.lib_dir = "lib/audioquiz"
end
