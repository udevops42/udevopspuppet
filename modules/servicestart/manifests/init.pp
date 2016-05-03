class servicestart {
service {'someservice':
           name => "httpd",
           ensure => stopped
        }
}
