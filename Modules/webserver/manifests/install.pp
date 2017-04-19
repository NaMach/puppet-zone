# Clawebserver::install
#
#
class webserver::install {
    $http_service = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
    }

    package { $http_service:
        ensure => installed,        
    }

}