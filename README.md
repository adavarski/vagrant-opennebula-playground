## Vagrant OpenNebula playground

Start an self contained OpenNebula LAB with 1 compute nodes and a frontend node using vagrant.

Status:

- OpenNebula: 6.7 CE
- Ubuntu 20.04 (frontend and nodes)

## Requirements

Install `Virtualbox` and `Vagrant` on your system

Also install the `hostmanager` vagrant plugin

```
vagrant plugin install vagrant-hostmanager
```

## Usage

```
make start
```

To see your credentials type `make creds`
Now connect via browser on `http://127.0.0.1:8080`

You should now have a `opennebula` installation with 1 hosts able to start VMs

### Connect to boxes via ssh

```
vagrant ssh frontend
vagrant ssh compute1
```

## De-Bootstrap

```
make clean

# or
vagrant destroy --force
```
