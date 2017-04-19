# Clawebserver::uninstall
#
#
class webserver::uninstall inherits webserver::params {
    service { $webserver::params::http_service:
        ensure => purged,
    }
    
}
