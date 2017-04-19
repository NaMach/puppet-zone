class webserver::homepage ($file_value="index", $homepage_location="/var/www/html/index.html") inherits webserver::params {
    file { $homepage_location :
        ensure => file,
        #source => 'puppet:///modules/class/file.txt';
        content => file("webserver/${file_value}.html"),
        notify => Service["${webserver::params::http_service}"], 
        
    }
}
