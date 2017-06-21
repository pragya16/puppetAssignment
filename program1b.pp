#Deletion file script

# this puppet manifest will remove the file /etc/puppet/manifests/file1.txt if it exists

file { "/etc/puppet/manifests/file1.txt":
    ensure  => 'absent',
    content => 'file is deleted here named file1...',
  }
  
  '''output-
  [root@puppetmaster manifests]# cat file1.txt
  cat: file1.txt:
  No such file or directory
  '''
  
  
