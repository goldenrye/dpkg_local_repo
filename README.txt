
This project showcases how APT picks up the depended package version

Steps:

1) make clean: clean all the generated files
2) make: build jpi-base (3 versions) and jpi-derive debian packages
3) add packages to the apt repo
   create a file /etc/apt/source.list.d/test.list with the following content
   deb [trusted=yes] file://<debian_directory> ./

   e.g. if the project is under the directory /home/ubuntu/Projects/dpkg_local_repo, the content is
   deb [trusted=yes] file:///home/ubuntu/Projects/dpkg_local_repo ./

4) apt update: update package list
5) list all the packages available
   apt-cache search jpi-: list all all the packages prefix "jpi-", jpi-base/jpi-derive
   apt-cache madison jpi-base: list all the versions of package jpi-base
6) install jpi-derive
   apt install jpi-derive

   this will download the lastest version of dependency (jpi-base) but fail the install due to unmet versio constraint

