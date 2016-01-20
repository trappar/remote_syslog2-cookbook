file node['remote_syslog2']['config_file'] do
  # Using JSON.parse(x.to_json) to convert Chef::Node::ImmutableArray and
  # Chef::Node::ImmutableMash to plain Ruby array and hash.
  # https://tickets.opscode.com/browse/CHEF-3953
  content JSON.parse(node['remote_syslog2']['config'].to_json).to_yaml

  mode '0644'
  notifies :restart, 'service[remote_syslog2]', :delayed
end