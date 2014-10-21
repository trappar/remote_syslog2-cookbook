cookbook_file '/etc/init.d/remote_syslog' do
  source 'remote_syslog.init.d'
  mode '0755'
end

service 'remote_syslog' do
  supports restart: true, status: true
  action [:start, :enable]
end