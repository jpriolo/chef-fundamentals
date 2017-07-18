# ~/cookbooks/apache/recipes/server.rb

log 'log-jp' do
  message 'a message add to the log'
  level :info
end

package 'vim-enhanced' do
  action :install
end

package 'httpd' do
  action  :install
end

#---------
#notifies :action, 'resource[name]', :timer
#subscribes :action, 'resouce[name]', :timer
#---------


template '/var/www/html/index.html' do
  source 'index.html.erb'
  notifies  :restart, 'service[httpd]', :immediately
end

#subscribes :action, 'resouce[name]', :timer
service 'httpd' do
  action [ :enable, :start ]
  subscribes  :restart, 'template[/var/www/html/index.html]', :immediately
end

directory '/var/www/html/testfolder' do
	owner			'apache'
	group			'apache'
	recursive		true
	mode			'0755'
end

user 'user1' do
	comment 'user1'
	uid '123'
	home '/home/user1'
	shell '/bin/bash'
end
#add group
group 'admins222' do
	members 'user1'
end
