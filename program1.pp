#Write a script which will demonstrate File Creation and Deletion
    #this code meant for create file-
file { '/etc/puppet/manifests/file1.txt':
      ensure  => 'file',   
      owner   => 'root',    
      group   => 'root',   
      mode    => '755', 
      content => 'file is created here named file1...', 
      # This source file would be located on the Puppet master at /etc/puppet/manifests/filecreation
     
    }
    
    '''output-
    
    [root@puppetmaster manifests] # cat file1.txt 
    file is created here named file1...
    '''
