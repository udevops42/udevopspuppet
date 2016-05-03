class packageinstall {
package {'somepackage':
          name => "telnet",
          ensure => installed
}
} 
