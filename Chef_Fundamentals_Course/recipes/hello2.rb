file '/Users/jpriolo/HELLO.txt' do
	content 'hello, cruel world!'
	mode		'0750'
	owner		'jpriolo'
	group		'staff'
end

package 'hello' do
	action :delete
end

file	'hi_there.txt' do
	content	"why me?"
	action :create
end
