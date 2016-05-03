class packandfile {
package {'somepackage':
         name   => "wget",
         ensure => absent
        }
file {"/home/client/wget.txt":
         ensure  => file,
         owner   => "devopsa",
         mode    => 0777,
         content => "Installed wget from packandfile module"
     }
    }
