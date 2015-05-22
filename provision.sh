#!/usr/bin/env bash
#
# The MIT License (MIT)
#
# Copyright (c) 2015 Adafruit
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.
add-apt-repository -y ppa:git-core
apt-get update
apt-get install -y git unzip build-essential libncurses5-dev debhelper quilt devscripts emacs vim 
apt-get install -y cmake pkg-config libmpdclient-dev libappindicator-dev libcurl4-gnutls-dev libwnck-dev libwebkit-dev libsqlite3-dev libsoup-gnome2.4-dev
apt-get install -y libmad0-dev libogg-dev libvorbis-dev libid3tag0-dev

#if [ -L /usr/sbin/adabuild ]; then
#  rm /usr/sbin/adabuild
#fi

#ln -s /vagrant/build.sh /usr/sbin/adabuild

if ! grep -Fq "rborisov" /home/vagrant/.bashrc; then
  echo 'export EMAIL="rborisoff@gmail.com"' >> /home/vagrant/.bashrc
  echo 'export DEBFULLNAME="rborisov"' >> /home/vagrant/.bashrc
fi

git clone https://github.com/rborisov/pircar.git

#cd ~/pircar/libconfig-1.4.9 && ./configure && make & make install
#cd ~/pircar/libstreamripper && ./configure && make & make install
#cd ~/pircar
