require 'serverspec'

set :backend, :exec
puts "os: #{os}"

describe command('/usr/bin/docker --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match(/1.9.1/) }
end
