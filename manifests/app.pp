node 'node1' {
    notify {"*** NODE1 BLOCK ****":}
    include java
    class {'::tomcat':
      xms                => '60m',
      xmx                => '120m',
      user               => 'tomcat',
      group              => 'root',
      service_state      => 'running',
    }

    include prefs
}

node 'node2' {
    notify {"*** NODE2 BLOCK ****":}
    
    include java
    class {'::tomcat':
      xms                => '60m',
      xmx                => '120m',
      user               => 'tomcat',
      group              => 'root',
      service_state      => 'stopped',
    }

}

node 'node3' {
    notify {"*** NODE3 BLOCK ****":}
    include java
    include tomcat

}


node default {
    notify {"checkpoint_1":

        message => "*** default BLOCK ***"
    }
}