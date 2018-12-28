#! /bin/sh

### BEGIN INIT INFO
# Provides:          autossh
# Required-Start:    $local_fs $remote_fs $network $syslog
# Required-Stop:     $local_fs $remote_fs $network $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: starts the autossh
# Description:       starts the autossh
### END INIT INFO

case "$1" in
    start)
    autossh -M 55555 -qTfnN -R 10022:127.0.0.1:22 -i /root/.ssh/id_rsa root@on0.cn
    ;;
    stop)
    killall autossh
    ;;
    restart)
    killall autossh
    autossh -M 55555 -qTfnN -R 10022:127.0.0.1:22 -i /root/.ssh/id_rsa root@on0.cn
    ;;
    *)
    echo "Usage: $0 (start|stop)"
    ;;
esac
exit 0
