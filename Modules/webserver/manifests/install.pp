# Clawebserver::install
#
#
class webserver::install inherits webserver::params {
    package { $webserver::params::http_service:
        ensure => installed,        
    }

}