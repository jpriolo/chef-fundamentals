# ~/cookbooks/apache/recipes/server.rb

package 'httpd' do
	action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
end

service 'httpd' do
	action [:enable,:start]
end

directory '/var/www/html/testfolder' do
	owner			'apache'
	group			'apache'
	recursive	true
	mode			'0755'
end

user	'user1'	do
	comment 'user1'
	uid			'123'
	home		'/home/user1'
	shell		'bin/bash'
end
