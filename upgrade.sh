#!/bin/sh

# Execute this file directly from the commandline
# wget --quiet --output-document=- https://raw.githubusercontent.com/MarcelMpunkt/handyDebianCustomization/master/upgrade.sh | sudo bash

 echo -n '-> Sync time:' &&\
  timedatectl set-ntp 0 &&\
  timedatectl set-ntp 1 &&\
  echo ' ✓ done' &&\
  sleep 1 &&\
  echo '-> Updating:' &&\
  sudo apt-get update &&\
  echo '-> Full Upgrade:' &&\
  sudo apt full-upgrade -y &&\
  echo '-> Dist Upgrade' &&\
  sudo apt dist-upgrade -y &&\
  echo '-> Cleanig Cache:' &&\
  sudo apt autoremove -y &&\
  sudo apt clean -y &&\
  echo ' ' &&\
  echo 'System should be up-to-date  ✓'
