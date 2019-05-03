#!/usr/bin/env bash
git submodule foreach "git commit -am . || true"
git submodule foreach "git push --set-upstream origin-ssh"
