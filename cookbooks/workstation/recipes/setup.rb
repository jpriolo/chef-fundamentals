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

template '/etc/motd' do
  source 'motd.erb'
  action :create
end

