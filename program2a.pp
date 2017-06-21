# Write a script which will demonstrate User,Group Creation and Deletion
# this code meant for create group

group { cloud:
        ensure  => 'present',
        gid     => 2000,
    }
    
user {  tina:
        ensure  => 'present',
        uid     => 101,
        home    => "/home/pragya_g16",
        shell   => "/bin/bash",
        managehome  => true,
    }

    
    '''output
    [root@puppetmaster ~]# cut -d: -f1 /etc/group
    systemd-networktss
    google
    -sudoers
    pragya_g16
    puppet
    cloud
    tina
    '''
    
