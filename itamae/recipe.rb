# install nginx
package 'nginx' do
  action :install
end

# enable and start nginx
service 'nginx' do
  action [:enable, :start]
end
