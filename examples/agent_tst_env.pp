class { 'puppet::agent':
  puppetmaster       => 'lolmaster',
  puppetmasterport   => '1234',
  puppet_environment => 'tst_env',
}
