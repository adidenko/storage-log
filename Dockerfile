FROM busybox
RUN for dir in "audit cobbler ConsoleKit coredump httpd lxc nailgun naily nginx ntpstats puppet rabbitmq rhsm supervisor" ; do mkdir -p /var/log/$dir; done
VOLUME ["/var/log"]
CMD /bin/echo storage/log I am a data-only container for Fuel
