class tempdemo 
{
file {"/tmp/abctempdemo.txt":
         ensure => file,
         #source => "puppet:///modules/tempdemo/sometext.txt",
         content => template('tempdemo/some.erb'),
         owner => 'puppet',
         group => 'puppet',
         mode => 0777
}
}
