#
# DEPRECATED - TO BE REMOVED - USE puppet::agent INSTEAD
#
class puppet::client(
                      $puppetmaster           = 'puppetmaster',
                      $puppetmasterport       = '8140',
                      $srcdir                 = '/usr/local/src',
                      $waitforcert            = 30,
                      $showdiff               = true,
                      $package_ensure         = 'installed',
                      $service_ensure         = 'running',
                      $service_enable         = true,
                      $manage_service         = true,
                      $manage_package         = $puppet::params::manage_package_default,
                      $log                    = '/var/log/puppet/puppet.log',
                      $logdir                 = '/var/log/puppet',
                      $logrotate_rotate       = '15',
                      $logrotate_maxsize      = '100M',
                      $install_nagios_checks  = true,
                      $nagios_check_basedir   = '/usr/local/bin',
                      $manage_config_file     = true,
                    ) inherits puppet::params {

  #
  # puppet 3.8 compatibility
  #

  class { 'puppet::agent':
    puppetmaster          => $puppetmaster,
    puppetmasterport      => $puppetmasterport,
    srcdir                => $srcdir,
    waitforcert           => $waitforcert,
    showdiff              => $showdiff,
    package_ensure        => $package_ensure,
    service_ensure        => $service_ensure,
    service_enable        => $service_enable,
    manage_service        => $manage_service,
    manage_package        => $manage_package,
    log                   => $log,
    logdir                => $logdir,
    logrotate_rotate      => $logrotate_rotate,
    logrotate_maxsize     => $logrotate_maxsize,
    install_nagios_checks => $install_nagios_checks,
    nagios_check_basedir  => $nagios_check_basedir,
    manage_config_file    => $manage_config_file,
  }

}
