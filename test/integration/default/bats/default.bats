@test "exactly one remote_syslog2 bin exists in expected location" {
    [ $(ls /usr/local/bin/remote_syslog2* | wc -l) -eq 1 ]
}

@test "remote_syslog2 config exists" {
    [ -f /etc/remote_syslog2.yml ]
}

@test "port in config file is unquoted" {
    cat /etc/remote_syslog2.yml | grep "port: 123"
}

@test "remote_syslog2 is running" {
    service remote_syslog2 status | grep "running"
}

@test "downloaded archive has been cleaned up" {
    [ ! -f /tmp/remote_syslog.tar.gz ]
}

@test "extracted archive has been cleaned up" {
    [ ! -d /tmp/remote_syslog ]
}