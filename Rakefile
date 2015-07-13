require 'rake'
require 'rspec/core/rake_task'

hosts = [
  {
    :name => 'ubuntu',
    :roles => %w( ubuntu-common ppa groonga mecab-dictionary ),
  },
  {
    :name => 'centos',
    :roles => %w( yumrepo groonga mecab-dictionary ),
  },
  {
    :name => 'fedora',
    :roles => %w( fedorarepo groonga mecab-dictionary ),
  },
]

hosts = hosts.map do |host|
  {
    :name => host[:name],
    :short_name => host[:name].split('.')[0],
    :roles => host[:roles],
  }
end

task :default => :spec

desc "Run serverspec to all hosts"
task :spec => 'spec:all'

namespace :spec do
  task :all => hosts.map {|h| 'spec:' + h[:short_name] }
  hosts.each do |host|
    desc "Run serverspec to #{host[:name]}"
    RSpec::Core::RakeTask.new(host[:short_name].to_sym) do |t|
      ENV['TARGET_HOST'] = host[:name]
      t.pattern = 'spec/{' + host[:roles].join(',') + '}/*_spec.rb'
    end
  end
end
