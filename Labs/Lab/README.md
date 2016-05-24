You will need to boxes in the boxes/ directory
juniper-ffp-12.1X47-D15.4-packetmode.box
ubuntu1404-desktop.box

You can download these boxes from (please rename them to match):
https://atlas.hashicorp.com/juniper/boxes/ffp-12.1X47-D15.4-packetmode/versions/0.5.0/providers/virtualbox.box
https://atlas.hashicorp.com/box-cutter/boxes/ubuntu1404-desktop/versions/2.0.7/providers/virtualbox.box


The Vagrant environment can be started with
vagrant up
This will bring up the included vsrx and ubuntu instances with
network connectivity.


## Usefull Information ##

# Usernames / Passwords
  vsrx: root / Juniper
  ubuntu: vagrant / vagrant

# Vagrant Plugins (Should automatically install with vagrant up)
  Requires the vagrant-junos plugin:
    vagrant plugin install vagrant-junos
  Requires the vagrant-host-shell plugin:
    vagrant plugin install vagrant-host-shell

# ssh from host to vsrx
  vagrant ssh vsrx
  or
  ssh -i .vagrant/machines/vsrx/virtualbox/private_key -p 2222 root@127.0.0.1

# ssh from host to ubuntu
  vagrant ssh ubuntu
  or
  ssh -i .vagrant/machines/ubuntu/virtualbox/private_key -p 2200 vagrant@127.0.0.1

# ssh from ubuntu to vsrx (keys and ssh config have been setup)
  ssh vsrx

# ssh from vsrx to ubuntu (shouldnt need to...)
  ssh vagrant@172.16.0.3





