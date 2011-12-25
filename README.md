libgit2-make-ios
================

Hoon Hwangbo
2011.12.25






This project is a set of script which makes *universal static library* of `libgit2` for *iOS*.



Usage
-----

Here's simple and *just working* example.

	git	clone git://github.com/libgit2-make-ios.git
	cd	libgit2-make-ios
	sh	download-and-make-at-here.sh

This will download current source of `libgit2` from *Github* and make `src` and `build` directory. You can take static library binary in `./build/libgit2.a`.

If you already have source files of `libgit2` in location of `./../libgit2` and just want to chain build script, use `make.sh` like this.

	sh	make.sh ./../libgit2
	
The script will make `build` directory at current directory. And you always have to specify ource directory of `libgit2`.



























