require 'rake'
require 'rspec/core/rake_task'

hosts = [
  {
    :name => 'ubuntu',
    :roles => %w( ubuntu-common ppa groonga ),
  },
  {
    :name => 'centos',
    :roles => %w( yumrepo groonga ),
  },
]

hosts = hosts.map do |host|
  {
    :name => host[:name],
    :short_name => host[:name].split('.')[0],
    :roles => host[:roles],
    :ip => host[:ip],
  }
end

desc "Run serverspec to all hosts"
task :serverspec => 'serverspec:all'

namespace :serverspec do
  task :all => hosts.map {|h| 'serverspec:' + h[:short_name] }
  hosts.each do |host|
    desc "Run serverspec to #{host[:name]}"
    RSpec::Core::RakeTask.new(host[:short_name].to_sym) do |t|
      ENV['TARGET_HOST'] = host[:name]
      t.pattern = 'spec/{' + host[:roles].join(',') + '}/*_spec.rb'
    end
  end
end
