define  httpd::mod 
(
$package = "",
$ensure  = ""
)
{
include httpd
package {$package:,
        ensure => $ensure
          }
        
}
