class tomcat {

exec {'downloadpackage':
   command => "/usr/bin/wget http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.59/bin/apache-tomcat-7.0.59.tar.gz",
   cwd => "/tmp"
     }
exec {'untar': 
    command => "/bin/tar zxvf apache-tomcat-7.0.59.tar.gz",
      cwd => "/tmp",
      require => Exec['downloadpackage']
}
exec {'mv':
      command => "/bin/mv apache-tomcat-7.0.59 /usr/tomcat7",
      cwd => "/tmp",
       require => Exec['untar']
}
user {"tomcat7":
      ensure => present,
      home => "/usr/tomcat7" ,
      require => Exec['mv']
}

file { "/usr/tomcat7":
        ensure => directory,
        owner  => "tomcat7",
        require => User['tomcat7']
}
file {"/etc/rc.d/init.d/tomcat7":
          ensure => file,
          source => "puppet:///modules/tomcat/tomcat7",
          mode => 0755,
          require => File["/usr/tomcat7"]
      }
service {"tomcat7":
        ensure => running,
        require => File["/etc/rc.d/init.d/tomcat7"],
        enable => true

}
file {"/usr/tomcat7/webapps/calendar.war":
       ensure => present,
       owner => "tomcat7",
       source => "puppet:///modules/tomcat/calendar.war",
       mode => 0755
        
}
}
