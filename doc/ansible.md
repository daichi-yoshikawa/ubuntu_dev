Ansible server(SSH client) remotely logs in to target server(SSH server).
Ansible server is supposed to generate bosh of ssh-key and ssh-public-key.
ssh-key is basically secret and possessed by ssh client.
So ansible server keeps ssh-key by itself.
On the otherhand, target server(ssh server) needs ssh-pub-key ansible server
generated. After transferring ssh-pub-key to target server from ansible server,
ansible server can log in target server via ssh.

Also, ansible server does "git clone" repositories from bitbucket.com via ssh.
In this case, ansible server is ssh-client and bitbucket server is ssh-server.
Therefore bitbucket needs to know ssh-public-key which ansible server generated in order to authorize ssh-access of ansible server.
This registration can be done at bitbucket.com -> Settings.