#!/bin/sh
echo "This is Asir installer for Android."
cd 
if [ -d OpenXM ]; then
  echo "'OpenXM' directory already exists. Please rename/remove it and try \"sh setup.sh\" again."
else
  curl -O https://staff.fukuoka-edu.ac.jp/fujimoto/android/asir_aarch64.tar.gz
  echo "Extracting Asir archive ..."
  tar xf asir_aarch64.tar.gz
  echo "Done!"
  if [ ! -f .feprc ]; then
    cp OpenXM/rc/feprc .feprc
  fi
  if [ ! -f .profile ]; then
    cp ../usr/etc/profile .profile
  fi
  if [ ! "$(cat .profile | grep 'source ./OpenXM/rc/bashrc' )" ]; then
	    echo "source ./OpenXM/rc/bashrc" >> .profile
  fi
  rm asir_aarch64.tar.gz
  echo "Asir setup has done!"
fi
