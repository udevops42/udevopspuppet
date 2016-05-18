class profiles::apache {
class { "httpd":
package        => "httpd",
package_ensure => "installed",
config_file    => "/etc/httpd/conf/httpd.conf",
file_ensure    => "file",
file_source    => "puppet:///modules/httpd/httpd.conf",
service        => "httpd",
service_ensure => "running",
service_enable => "true",
}
httpd::mod {"mod_nss":
package => "mod_nss",
ensure => "installed",
}
}

