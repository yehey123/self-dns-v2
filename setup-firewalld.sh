firewall-cmd --permanent --add-service=http --add-service=https --add-service=dns --add-service=dhcp --add-service=dhcpv6 --add-service=ntp
firewall-cmd --reload