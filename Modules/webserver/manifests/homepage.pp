class webserver::homepage inherits webserver::params {
    file { '/var/www/html/index.html' :
        ensure => file,
        #source => 'puppet:///modules/class/file.txt';
        content => file('webserver/index.html'),
    }
}