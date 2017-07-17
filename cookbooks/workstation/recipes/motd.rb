package 'nano'

package 'ntp'

package 'tree' do
  action :install
end

package 'git' do
  action :install

end
service 'ntpd'  do
  action  [:enable, :start]
end

#print statement "I have 4 apples"
#apple_count = 4 apples
#puts " i have #{apple_count} apples"

file '/etc/motd' do
  content "This server is the property of Joseph P
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
  "
  action :create
#  owner 'root'
#  group 'root'
#  mode  '777'
end

