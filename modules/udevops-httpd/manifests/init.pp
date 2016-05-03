# == Class: httpd
#
# Full description of class httpd here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'httpd':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class httpd 
(
$package        = $httpd::params::package, 
$package_ensure = $httpd::params::package_ensure,
$config_file    = $httpd::params::config_file,
$file_ensure    = $httpd::params::file_ensure,
$file_source    = $httpd::params::file_source,
$service        = $httpd::params::service,
$service_ensure = $httpd::params::service_ensure,
$service_enable = $httpd::params::service_enable,
)
inherits httpd::params
{
case $::osfamily {
        'RedHat' : {
          package {$package:
                ensure => $package_ensure
                }
           file {$config_file:
                 ensure => $file_ensure,
                 source => $file_source,
                 require => Package[$package]
                }
           service {$service:
                  ensure => $service_ensure,
                  enable => $service_enable,
                  subscribe => File[$config_file]
                 }
              }
        'Debian' : {
            package {"apache2":
                   ensure => installed
                   }
            file { "/etc/apache2/apache2.conf":
                   ensure => file,
                   source => "puppet:///modules/httpd/apache2.conf",
                   require => Package[$package]
                  }
            service { "apache2":
                   ensure => running
                   subscribe => File[$config_file]
                    }
                  }
         default : {}
                 }
               }
