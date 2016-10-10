# MEAN BOX

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

## How To Build The Virtual Machine

    host $ git clone https://github.com/david-wolgemuth/mean-box.git
    host $ cd mean-box
    host $ vagrant up

After the installation has finished, you can access the virtual machine with

    host $ vagrant ssh

Port 1337 in the host computer is forwarded to port 1337 in the virtual machine. Thus, applications running in the virtual machine can be accessed via localhost:1337 in the host computer. Be sure the web server is bound to the IP 0.0.0.0, instead of 127.0.0.1, so it can access all interfaces:

    app.listen(1337, "0.0.0.0", ...)

## What's In The Box

* Development tools

* Git

* Node

* Mongo

## Virtual Machine Management

Access Machine

    host $ vagrant ssh

Suspend (pause)

    host $ vagrant suspend

Resume (unpause)

    host $ vagrant resume

Shutdown

    host $ vagrant halt

Boot Up

    host $ vagrant up

Check Status

    host $ vagrant status

Wipe the VM **destroying all its contents**:

    host $ vagrant destroy # DANGER: all is gone
