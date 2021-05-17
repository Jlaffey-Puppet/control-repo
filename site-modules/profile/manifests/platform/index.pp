
class profile::platform::index {
   file { '/var/www/html/index.html':
     ensure => file,
     source => "puppet:///modules/profile/index.html",
   }
}
