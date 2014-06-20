pecrant
==========

Vagrant global-status controller for peco.

Requirements
--------------------

- [peco](https://github.com/peco/peco)
- [Vagrant 1.6 or higher](http://www.vagrantup.com/blog/feature-preview-vagrant-1-6-global-status.html)
    - use `vagrant global-status`

Getting started
--------------------

### Installation

```
$ cd /path/to/bin # in $PATH
$ curl -O https://raw.githubusercontent.com/gongo/pecrant/master/pecrant
$ chmod +x ./pecrant
```

### Usage

```
$ pecrant help
pecrant
Usage: pecrant <command>

  up      Start the selected vagrant machine
  halt    Stop the selected vagrant machine
  ssh     Connect to machine via SSH
  list    Show vagrant environments for this user
  help    Show this message
```

`$ pecrant up`:

![](./images/pecrant_up.gif)

`$ pecrant halt`:

![](./images/pecrant_halt.gif)


Support `Select Multiple Lines`:

![](./images/pecrant_multiple.gif)

License
--------------------

MIT License.
