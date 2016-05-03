node 'client.localdomain' {
class { "httpd":
package        => "httpd",
package_ensure => "absent",
config_file    => "/etc/httpd/conf/httpd.conf",
file_ensure    => "file",
file_source    => "puppet:///modules/httpd/httpd.conf",
service        => "httpd",
service_ensure => "stopped",
service_enable => "false",
}
}







/*

include roles::webserver
     include adduser
}



node 'db01.apple.india {
      include roles::database
}
node '/^cache(\d+)\./ {
      include roles::cache
}
node '/^web(\d+)\./ {
      include roles::webserver
}


*/


































/*
$classname = "abcdef",
$day = "sunday"
{
#node scope
#$packagename = 'tree'
#include packageinstall
#include packandfile
#include servicestart
#include variablepackage
#include useradd
#include apache
#include casestatement
#include selectstatement
#include paramsexample
include tempdemo
#include weblogic
#class package {
#package  => 'wget'
#}
}
/*
node 'database.localdomain' {
#include packageinstall
#include packandfile
#include servicestart
#include variablepackag
#class package {
#package => 'telnet'
#}
}

*/
