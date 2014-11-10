remote_syslog2 cookbook
=======================
Installs and configures [remote_syslog2](https://github.com/papertrail/remote_syslog2)

## Supported Platforms

TODO: List your supported platforms.

## Attributes

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

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['remote_syslog']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### remote_syslog::default

Include `remote_syslog` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[remote_syslog::default]"
  ]
}
```

## License and Authors

Author:: Jeff Way (<jeff.way@me.com>)
