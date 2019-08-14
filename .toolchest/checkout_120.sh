#!/bin/sh
git submodule foreach "git checkout 12.0-RELEASE || true"
git commit -am .

