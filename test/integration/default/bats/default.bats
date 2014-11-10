@test "remote_syslog bin exists" {
    which remote_syslog
}

@test "remote_syslog config exists" {
    ls /etc/remote_syslog.yml
}

@test "remote_syslog is running" {
    ls /var/run/remote_syslog.pid
}