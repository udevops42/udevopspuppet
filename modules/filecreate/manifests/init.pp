class filecreate {
file {"/tmp/puppet.txt":
        ensure => file,
        owner => "devopsa",
        mode => 0444,
        group => "devops",
        content => "Hey Welcome to Puppet Class"
}
}
