include_recipe 'remote_syslog2::service'

config = node['remote_syslog2']['config'].to_hash
if config.key?('destination') && config['destination'].key?('port') && config['destination']['port']
  config['destination']['port'] = config['destination']['port'].to_i
end

file node['remote_syslog2']['config_file'] do
  content config.to_yaml
  mode '0644'
  notifies :restart, 'service[remote_syslog2]', :delayed
end
