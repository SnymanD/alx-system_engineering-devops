# Increase the amount of traffic

# Increase the ULIMIT of the default file
exec { 'fix--for--nginx':
# Modify ULIMIT
	command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
# Path
		path	=> '/usr/local/bin:/bin/'
}

# Restart
exec { 'nginx-restart':
# restart service
	command => '/etc/init.d/nginx restart',
# specify path
		path	=> '/etc/init.d/',
}

