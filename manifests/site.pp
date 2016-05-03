node 'client.localdomain' {
defineres::mycustomresource { "test":
filename => "/tmp/india",
secondfile => "/tmp/delhi",
somepackage => "telnet",
someservice =>  "httpd"
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
