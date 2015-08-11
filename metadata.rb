name             'remote_syslog2'
maintainer       'Jeff Way'
maintainer_email 'jeff.way@me.com'
license          'Apache 2.0'
description      'Installs/Configures remote_syslog2'
long_description 'Installs/Configures remote_syslog2'
version          '0.2.4'

supports 'ubuntu'

recipe 'remote_syslog2', 'Installs/Configures remote_syslog2'
recipe 'remote_syslog2::configure', 'Generates config file for remote_syslog2'
recipe 'remote_syslog2::install', 'Installs remote_syslog2'
recipe 'remote_syslog2::service', ' Installs remote_syslog2 as an init.d service and starts/enables it'
