# iocage-jaf-plugins forked from freenas/iocage-ix-plugins

"Official" iocage plugins for my personal [FreeNAS](http://www.freenas.org), [TrueOS](https://www.trueos.org) and [FreeBSD](http://www.freebsd.org) setups.

# Installing Plugins

    git clone --recurse-submodules --jobs=8 https://github.com/jed-frey-freenas-plugins/iocage-jaf-plugins.git
    cd iocage-jaf-plugins
 


## Using Local File
```

iocage fetch -P --name /the/path/to/jenkins.json ip4_addr="re0|192.168.0.100"
```
