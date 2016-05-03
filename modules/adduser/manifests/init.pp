class adduser 
($username = hiera('username'))
{
user {$username:
        ensure => present,
}
}
