# deletion group and user

group { cloud:
        ensure  => 'absent',
        }


user {  tina:
        ensure  => 'absent',
        }
        
        '''output-
        [root@puppetmaster manifests]# puppet apply /etc/puppet/manifests/program2ub.pp
        Notice: Compiled catalog for puppet in environment production in 0.12 seconds
        Notice: /Stage[main]/Main/User[tina]/ensure: removed
        Notice: Finished catalog run in 0.10 seconds
        '''
