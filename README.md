# remote_syslog-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

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
