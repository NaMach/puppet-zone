# Clawebserver::params
#
#
class webserver::params {
        $http_service = $facts['os']['family'] ? {
        'RedHat' => 'httpd',
        'Debian' => 'apache2',
        }
}