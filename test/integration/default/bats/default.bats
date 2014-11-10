@test "remote_syslog bin exists" {
    which remote_syslog2
}

@test "remote_syslog config exists" {
    ls /etc/remote_syslog2.yml
}

@test "remote_syslog is running" {
    ls /var/run/remote_syslog2.pid
}