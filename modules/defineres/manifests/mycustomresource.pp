define defineres::mycustomresource 
(
$filename = "",
$secondfile = "",
$somepackage = "",
$someservice =  ""
)
{
include defineres
file {$filename: 
       ensure => file
       }
file {$secondfile:
          ensure => file
      }
package {$somepackage:
           ensure => installed
         }
service {$someservice:
           ensure => running
         }
}
