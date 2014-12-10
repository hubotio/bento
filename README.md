# Bento

Bento is a project that encapsulates [Packer](http://packer.io) templates for building
[Vagrant](http://vagrantup.com) baseboxes. Chef use these boxes internally at Chef Software, Inc. for
testing Hosted Enterprise Chef, Private Enterprise Chef and our open source [cookbooks](http://community.opscode.com/users/Opscode)
via [test-kitchen](http://kitchen.ci/).

This fork (of a fork) is used for building the vagrant boxes for [hubot-development-environment](https://github.com/hubotio/hubot-development-environment)

## Building

Just run `make`. The resulting boxes will be in `builds`.

## Testing

To test with hubot-development-environment, you'll need to first build a box, then add it to vagrant:

```
vagrant box add --name hubot-development-environment builds/virtualbox/opscode_ubuntu-14.04_chef-provisionerless.box --force
```

Then in a hubot-development-environment checkout:

```
vagrant destroy # required if you already have a running box
vagrant up
vagrant ssh
```

Once inside the box, here are some commands to test that you can create a hubot  and run it:

```
mkdir hubot
yo hubot
bin/hubot
```

## Releasing

TODO
