function ssh::data(){
  $base_params = {
    'ssh::ensure'         => true,
    'ssh::service_enable' => true,
    'ssh::service_ensure' => 'running',
    
  }

  case $facts['os']['family']{
    'Debian':{
      $os_params = {
      'ssh::package_name' => 'openssh-server',
      'ssh::service_name' => 'ssh'
      }
    }
    'RedHat':{
      $os_params = {
      'ssh::package_name' => 'openssh-server',
      'ssh::service_name' => 'sshd',
      }
     }
     default:{
       fail("${case['operatingsystem']} is not supported")
     }
  }
}
