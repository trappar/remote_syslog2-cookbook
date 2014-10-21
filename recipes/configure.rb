# This is an example of the log_files.xml
# files:
#   - /var/log/httpd/access_log
#   - /var/log/httpd/error_log
#   - /opt/misc/*.log
#   - /home/**/*.log
#   - /var/log/mysqld.log
#   - /var/run/mysqld/mysqld-slow.log
# exclude_files:
#   - old
#   - 200\d
# hostname: www42  # override OS hostname
# exclude_patterns:
#   - exclude this
#   - \d+ things
# destination:
#   host: logs.papertrailapp.com
#   port: 12345   # NOTE: change this to YOUR papertrail port!
#   protocol: tls
# new_file_check_interval: 10 # Check every 10 seconds

config = {
  'files'                   => node[:remote_syslog][:conf][:files].to_a,
  'exclude_files'           => node[:remote_syslog][:exclude_files].to_a,
  'exclude_patterns'        => node[:remote_syslog][:exclude_patterns].to_a,
  'hostname'                => node[:remote_syslog][:hostname],
  'destination'             => node[:remote_syslog][:destination].to_hash
}

file '/etc/log_files.yml' do
  mode '0644'
  content config.to_yaml
  notifies :restart, 'service[remote_syslog]', :delayed
end