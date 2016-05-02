remote_syslog2 Cookbook CHANGELOG
=================================
This file is used to list changes made in each version of the remote_syslog2 cookbook.

v0.3.0 (2016-05-02)
-------------------
- Add remote_syslog2 binary update functionality - see "Note about updates" in readme
- Update remote_syslog binary version to 0.17 (Andy Thompson)
- Allow configuration of command line options (Rudolf Vriend)
- Fix generated config file on Chef 11.14 (Hendy Tanata)
- Fix invalid config file when non-integer ports are specified
- Add test for non-integer ports
- Add chefignore

v0.2.3 (2014-11-13)
-------------------
- Fix service management not deleting pid file when stop is called

v0.2.2 (2014-11-13)
-------------------
- Fixed more places where "remote_syslog" was used rather than "remote_syslog2"

v0.2.1 (2014-11-10)
-------------------
- Change name of extract resource to be less generic
- Have extract resource clean up temp files
- Fix up some language in tests
- Use direct file tests rather than ls in tests
- Add tests for file cleanup

v0.2.0 (2014-11-09)
-------------------
- Update the project to more closely follow community standards
- Install process now downloads/extracts a release directly from [here](https://github.com/papertrail/remote_syslog2/releases)
- Configuration is now completely procedural
- Renamed to remote_syslog2 for clarity since that's what Papertrail calls their repository even though they still call their binaries "remote_syslog"
- Added BATS tests
- Added better documentation
- Changed init script to be a template so that some values in it can be dynamic

v0.1.0
------
- Initial release of remote_syslog2
