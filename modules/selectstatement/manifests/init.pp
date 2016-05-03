class selectstatement {
$package = $osfamily ? {
            # 'RedHat'  => 'telnet',
             'Debian'  => 'tree',
             'AIX'     => 'bind',
             'solaris' => 'wget',
              default  => 'httpd',  
                 }

package { $package: 
           ensure => installed
}
}

