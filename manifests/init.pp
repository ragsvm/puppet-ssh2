class ssh (
 Boolean $permit_root_login = false,
 Integer $sshd_port = 22,
 String  $package_name,
 String  $service_name,
 String  $ensure,
 String  $service_ensure,
 Boolean $service_enable

){
  
  class {"::ssh::install":} ->
  class {"::ssh::file":} ~> 
  class {"::ssh::service":}
}
