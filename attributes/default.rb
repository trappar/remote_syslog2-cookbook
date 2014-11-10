# Overwrite this in your cookbook
default['remote_syslog2']['config'] = {
  conf: {
    files: []
  },
  exclude_files: [],
  exclude_patterns: [],
  hostname: node['hostname'],
  destination: {
    host: 'logs.papertrailapp.com',
    port: 12345
  }
}

default['remote_syslog2']['config_file'] = '/etc/remote_syslog.yml'
default['remote_syslog2']['pid_dir'] = '/var/run'

# These attributes deal with the download/extract process, you probably shouldn't change them
default['remote_syslog2']['install']['download_file'] = 'https://github.com/papertrail/remote_syslog2/releases/download/v0.13/remote_syslog_linux_386.tar.gz'
default['remote_syslog2']['install']['download_path'] = '/tmp/remote_syslog.tar.gz'
default['remote_syslog2']['install']['extract_path'] = '/tmp'
default['remote_syslog2']['install']['extracted_path'] = '/tmp/remote_syslog'
default['remote_syslog2']['install']['bin_path'] = '/usr/local/bin'
default['remote_syslog2']['install']['bin'] = 'remote_syslog'
