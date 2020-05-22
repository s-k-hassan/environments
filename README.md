# Ansible scripts to install different personalities for servers and to update

Requires the following host groups defined:

* update-ubuntu: ubuntu
* devtop: devtop
* install-jekyll-node: jekyll
* ansible-node: ansible
* distribute-ssh-keys: servers

Default hosts location file is located at `/etc/ansible/hosts`
For distribute-ssh-keys, set `/etc/ansible/.config` to `host_key_checking = False` if these are new servers to connect to (not in production, obviously)
