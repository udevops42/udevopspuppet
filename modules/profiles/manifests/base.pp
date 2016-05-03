class profiles::base {
      include tempdemo
      include packageinstall
      class {"httpd":
             ensure => installed
}
}
