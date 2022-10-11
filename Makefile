all:
	dpkg-deb --build --root-owner-group jpi-base_22.07-10_amd64
	dpkg-deb --build --root-owner-group jpi-base_22.07-15_amd64
	dpkg-deb --build --root-owner-group jpi-base_24.10-10_amd64
	dpkg-deb --build --root-owner-group jpi-derive_22.07-10_amd64

	dpkg-scanpackages --multiversion . /dev/null | gzip -9c > Packages.gz

clean:
	rm -f *.deb Package*
