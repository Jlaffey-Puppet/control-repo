class profile::platform::onprem::onpremfiles {
   file { '/var/www/html/graphic.png':
     ensure => file,
     source => "site-modules/profile/manifests/platform/onprem.png",
   }
}
