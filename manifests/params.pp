class ssh::params {
 
 $permit_root_login = false
 $sshd_port         = 22
 
 case $facts['os']['family']{

   'Debian':{
 
      $package_name = 'openssh-server'
      $service_name = 'ssh'    

    } 

    'Redhat':{
    
      $package_name = 'openssh-server'
      $service_name = 'sshd'
    
    }

    default:{

      fail("${facts['operatingsystem']} is not supported")
    
    }

 }

}
