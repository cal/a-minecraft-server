class java {
  package { "default-jre":
    ensure => present,
  }  
}

include java

