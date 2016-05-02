# Using JSON.parse(x.to_json) to convert Chef::Node::ImmutableArray and
# Chef::Node::ImmutableMash to plain Ruby array and hash.
# https://tickets.opscode.com/browse/CHEF-3953
# Also, convert port to integer since remote_syslog2 does not accept quoted port

config_options = JSON.parse(node['remote_syslog2']['config'].to_json)
config_options['destination']['port'] = Integer(config_options['destination']['port'])
config_options = config_options.to_yaml

file node['remote_syslog2']['config_file'] do
  content config_options

  mode '0644'
  notifies :restart, 'service[remote_syslog2]', :delayed
end