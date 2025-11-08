require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
end

desc 'Run the CLI tool'
task :run do
  ruby 'bin/delve_buddy_cli.rb'
end

task default: :test
