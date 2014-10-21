# config file attributes
default[:remote_syslog][:conf][:files] = []
default[:remote_syslog][:exclude_files] = []
default[:remote_syslog][:exclude_patterns] = []
default[:remote_syslog][:hostname] = node[:hostname]
default[:remote_syslog][:destination][:host] = 'logs.papertrailapp.com'
default[:remote_syslog][:destination][:port] = 12345