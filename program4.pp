
# question 4 : Write a script which will configure a git and clone some repository through it.


# puppet module install puppetlabs-vcsrepo --version 1.5.0(install this first)

# script is here
include git
git::config { 'user.name':
 value => 'pragya gupta',
}

git::config { 'user.email': 
 value => 'pragya.g16@example.com',
}

vcsrepo { '/tmp/git/repo': 
ensure   => present,
 provider => git, 
source   => 'https://github.com/pragya16/puppetAssignment.git',
}

'''output-
[root@puppetmaster modules]# puppet module install puppetlabs-vcsrepo
Notice: Preparing to install into /etc/puppet/modules ...
Notice: Downloading from https://forgeapi.puppetlabs.com ...
Notice: Installing -- do not interrupt .../etc/puppet/modules└── puppetlabs-vcsrepo (v1.5.0)
[root@puppetmaster modules]# cd /etc/puppet/manifests
[root@puppetmaster manifests]# vi vscrepo.pp[root@puppetmaster manifests]# puppet apply  vscrepo.ppWarning: Config file /etc/puppet/hiera.yaml not found, using Hiera defaults
Notice: Compiled catalog for puppet in environment production in 0.59 secondsNotice: /Stage[main]/Main/Vcsrepo[/tmp/git/repo]/ensure: created
Notice: Finished catalog run in 3.33 seconds
[root@puppetmaster manifests]# cd /tmp/git/repo
[root@puppetmaster repo]# ls -lahtotal 28Kdrwxr-xr-x.
 3 root root 4.0K Jun 28 05:13 .drwxr-xr-x. 4 root root   40 Jun 28 05:13 ..drwxr-xr-x. 8 root root 4.0K Jun 28 05:13 .git-rw-r--r--. 1 root root  359 Jun 28 05:13 program1b.pp-rw-r--r--. 1 root root  550 Jun 28 05:13 program1.pp-rw-r--r--. 1 root root  539 Jun 28 05:13 program2a.pp-rw-r--r--. 1 root root  464 Jun 28 05:13 program2b.pp-rw-r--r--. 1 root root   18 Jun 28 05:13 README.md [root@puppetmaster repo]# git status# On branch masternothing to commit, working directory clean
[root@puppetmaster repo]# [root@puppetmaster repo]# git pull origin
Already up-to-date.
'''
