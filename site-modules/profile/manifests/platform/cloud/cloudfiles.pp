
class profile::platform::cloud::cloudfiles {
   file { '/var/www/html/graphic.png':
     ensure => file,
     source => "puppet:///modules/profile/cloud-computing.png",
   }
}
