# Ansible Role Install

Use `ansible-node.yml` to install the Ansible packages and download all the files in this repo on the target node
`distribute-ssh-keys.yml` will distribute the public SSH key to all servers listed in your invntory. You will need to run the playbook with the `--ask-pass` switch as during the first connection the playbook will otherwise fail due to the initial password prompt. You'll also need to set `host_key_checking = False` inside `/etc/ansible/.config` if these are new servers to connect to and you are using self-signed certificates

## Roles Used in Playbooks

### ansible-node
* ansible

### distribute-ssh-keys
* servers

### update-ubuntu
* ubuntu
