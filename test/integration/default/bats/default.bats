@test "remote_syslog2 bin exists in path" {
    which remote_syslog2
    [ $? -eq 0 ]
}

@test "remote_syslog2 config exists" {
    [ -f /etc/remote_syslog2.yml ]
}

@test "remote_syslog2 is running" {
    [ -f /var/run/remote_syslog2.pid ]
}

@test "downloaded archive has been cleaned up" {
    [ ! -f /tmp/remote_syslog.tar.gz ]
}

@test "extracted archive has been cleaned up" {
    [ ! -d /tmp/remote_syslog ]
}