class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                  ensure => present,
                  user => 'root',
                  type => 'ssh-rsa',
                  key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDRVY+W6JlZNkPBlmtkznUpogMylVBfe9YR87aSVlrxyHILHkaetOieX+82sUfa2dRVn/dpBexFbXnl22Uh78PtU3/qsQXA5XED8rZOAL3cRp7QLDs+4Wtt4uy9IO+4D4h0RTLx11DxKYWnO7UrWF55uAn9HBRGsPceLN6YIyt6LEOcUGXGgoNIn5H2BjwmykzBxOxQuN/bIml2jTLjq8ArDHsm6V6JVSh7fvsTFzpDk0B0UldrWZ8KnD7IYtujZSi/vbexDIHp86cJGwkTVGRiNZyvVUTszupbzpX+EprDSp3CVb7H5ynvC0kxdKGKWNO49COgWz0fcS/XbaXa1moX',
        }
}        
