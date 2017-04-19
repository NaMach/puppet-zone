# Clawebserver::service
#
#
class webserver::service inherits webserver::params {
    service { $webserver::params::http_service:
        ensure     => running,
        enable     => true,
    }
    
}

