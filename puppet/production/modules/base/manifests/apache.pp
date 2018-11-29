class base {

case $::osfamily{
	"RedHat": {
		$web = "httpd"
		
	}
	"Debian": {
	
		$web = "apache2"
		exec{"atualizando_pacotes":
			command => "/usr/bin/apt update"
		}
	}	



	}	
package{$web:
	ensure => present
	}

user{"devops":
	ensure => present
}


}
