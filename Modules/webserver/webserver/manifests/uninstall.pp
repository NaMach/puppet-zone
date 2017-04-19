# Clawebserver::uninstall
#
#
class webserver::uninstall {
    $http_service = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }

    service { $http_service:
        ensure => purged,
    }
    
}
