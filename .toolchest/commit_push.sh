#!/usr/bin/env
git submodule foreach "git commit -am . || true"
git submodule foreach "git push"
