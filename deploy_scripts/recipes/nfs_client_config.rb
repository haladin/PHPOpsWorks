include_recipe 'nfs'

Chef::Log.info("Amazon EC2 CLI Tools")
package "aws-apitools-ec2" do
  action :install
end

directory node['nfs_client']['nfs_mount_point'] do
  mode 02770
  owner 'ec2-user'
  group 'apache'
  recursive true
  action :create
end

mount node['nfs_client']['nfs_mount_point'] do
  device node['nfs_client']['nfs_server'] + ":" + node['nfs']['export']
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

	
