class ssh::file
( $permit_root_login = $::ssh::permit_root_login,
  $sshd_port         = $::ssh::sshd_port,
){
  file {'/etc/ssh/sshd_config':
    
    ensure => file,
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
#   source => 'puppet:///modules/ssh/sshd_config',
    content => template('ssh/sshd_config.erb'),
  }  
}
