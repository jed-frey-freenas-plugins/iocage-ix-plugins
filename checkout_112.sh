#!/bin/sh
git submodule foreach "git checkout 11.2-RELEASE || true"
git commit -am .

