class profile::platform::onprem::onpremfiles {
   file { '/var/www/html/graphic.png':
     ensure => file,
     source => "puppet:///modules/profile/newonprem.png",
   }
}
