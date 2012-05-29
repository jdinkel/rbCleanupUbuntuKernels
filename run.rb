#!/usr/bin/env ruby

installed_packages = `dpkg --get-selections | grep linux`
current_kernel = `uname -r`
