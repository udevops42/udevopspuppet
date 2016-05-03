class casestatement {
case $osfamily {
               /*
               'RedHat' : { 
                   file { "/tmp/redhat.txt":
                            ensure => file,
                            content => "This is from casestatement, using facter"
                        }
                        }
                */
               'Debian' : { 
                   file { "/tmp/debian.txt":
                            ensure => file,
                            content => "This is from casestatement, using facte"
                        }

                        }
               'AIX'    : {
                   file { "/tmp/aix.txt":
                            ensure => file,
                            content => "This is from casestatement, using facter"
                        }

                        }
                default : {

                   file { "/tmp/default.txt":
                            ensure => file,
                            content => "This is from casestatement, using facter, default fil"
                        }


                }
               }
}
