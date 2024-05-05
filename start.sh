#!/usr/bin/env bash
cat <<EOF


######################################################################################################################
######################################################################################################################

Stage 1 - Setting up the build system

######################################################################################################################
######################################################################################################################


EOF

if [[ $EUID -gt 0 ]]; then
    echo "Not root, exiting..."
    exit
fi

apt update && apt install -y gcc g++ texinfo make wget autoconf automake \
libtool libtool-bin gawk curl bzip2 xz-utils tk8.6-dev tcl8.6-dev\
patch libstdc++6 gettext libsigsegv-dev pkgconf 

#////////////////////////////////////////////////////////////////////////////
cat <<EOF


######################################################################################################################
######################################################################################################################

Downloading sources

######################################################################################################################
######################################################################################################################


EOF

mkdir sources
mkdir build




