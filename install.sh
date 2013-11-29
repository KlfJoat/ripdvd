#!/bin/bash
#
# install.sh
#
# Install current script to bin
#

files = 

install_to = "/home/klfjoat/bin"

for i in "$files"; do
  cp "$i" "$install_to"
done

