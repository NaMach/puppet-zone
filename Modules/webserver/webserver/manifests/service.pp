# Clawebserver::service
#
#
class webserver::service {
    $http_service = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }

    service { $http_service:
        ensure     => running,
        enable     => true,
    }
    
}

