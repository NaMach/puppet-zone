class webserver::homepage inherits webserver::params {
    file { '/var/www/html/index.html' :
        ensure => file,
        #source => 'puppet:///modules/class/file.txt';
        content => file('apache/index.html'),
    }

    service { $webserver::params::http_service:
        ensure     => running,
        enable     => true,
        hasrestart => true,
        hasstatus  => true,
    }

}