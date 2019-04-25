#!/bin/sh

git fetch --all
git remote add --fetch --tags --mirror=push origin-ssh  `git remote get-url origin | sed "s/https:\/\//git@/" | sed "s/.com\//.com:/"`
git submodule foreach 'git checkout 11.2-RELEASE'
git submodule foreach 'git config user.email `whoami`@`hostname`-`uname`'
git submodule foreach 'git config user.name `whoami`'
git submodule foreach 'git remote add --fetch --tags --mirror=push origin-ssh  `git remote get-url origin | sed "s/https:\/\//git@/" | sed "s/.com\//.com:/"` || true'
git submodule foreach 'git commit -am . || true'
git submodule foreach 'git push origin-ssh || true'
git submodule foreach 'git fetch --all || true'
git commit -am . || true
git push origin-ssh || true
git fetch --all
