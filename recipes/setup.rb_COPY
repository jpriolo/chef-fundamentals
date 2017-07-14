package 'nano'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp'

file '/etc/motd' do
  content 'This server is the property of ...
hi there from Joseph P.'
  action :create
  owner 'root'
  group 'root'
  mode  '777'
end

service 'ntpd'  do
  action  [:enable, :start]
end
