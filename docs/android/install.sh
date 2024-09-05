#!/bin/sh
echo "This is Asir installer for Android."
cd 
if [ -d OpenXM ]; then
  echo "'OpenXM' directory already exists. Please rename/remove it and try \"sh install.sh\" again."
else
  curl -O https://openxm-org.github.io/setup/android/asir_aarch64.tar.gz
  echo "Extracting Asir archive ..."
  tar xf asir_aarch64.tar.gz
  echo "Done!"
  if [ ! -f .profile ]; then
    cp ../usr/etc/profile .profile
  fi
  if [ ! "$(cat .profile | grep 'source ./OpenXM/rc/bashrc' )" ]; then
	    echo "source ./OpenXM/rc/bashrc" >> .profile
  fi
  rm asir_aarch64.tar.gz
  echo "Asir setup has done!"
fi
