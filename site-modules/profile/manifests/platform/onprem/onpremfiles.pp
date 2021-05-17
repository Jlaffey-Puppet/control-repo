class profile::platform::onprem::onpremfiles {
   file { '/var/www/html/graphic.png':
     ensure => file,
     source => "/etc/puppetlabs/code/environments/production/site-modules/profile/manifests/platform/onprem.png",
   }
}
