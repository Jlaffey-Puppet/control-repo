class profile::platform::baseline::linux::packages {

  $pkgs = ['unzip','wget', 'vim']

  ensure_packages($pkgs, {ensure => installed})

  if $::osfamily == 'RedHat' {
    include ::epel
  }

  unless getvar('trusted.external.servicenow.u_enforced_packages').empty {
    $packages = parsejson($trusted['external']['servicenow']['u_enforced_packages'])
    $packages.each |$package,$ensure|{
      package { $package:
        ensure => $ensure
      }
    }
  }
}
