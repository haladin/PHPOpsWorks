include_recipe 'nfs'

directory node['nfs']['export'] do
  mode 0770
  owner 'ec2-user'
  group 'ec2-user'
  recursive true
  action :create
end

nfs_export node['nfs']['export'] do
  network '*'
  writeable true
  sync true
  options ['no_root_squash']
end