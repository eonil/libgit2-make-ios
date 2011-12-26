libgit2-make-ios
================

Hoon Hwangbo
2011.12.25





[**libgit2**](https://github.com/libgit2/libgit2) is using *CMake* to support cross-platform build.
Anyway the *CMake* itself doesn't support Apple's iOS platform (yet?), and binaries for iOS platform usually require to be universal for fluent development process.
So I made this stuff to offer automated build of `libgit2` library for iOS platform.

This project is a set of script which makes *universal static library* of `libgit2` for *iOS*.





Usage
-----

Here's simple and *just working* example.

	git	clone git://github.com/libgit2-make-ios.git
	cd	libgit2-make-ios
	sh	download-and-make-at-here.sh

This will download current source of `libgit2` from *Github* and make `src` and `build` directory. You can take static library binary from `./build/libgit2.a`.

If you already have source files of `libgit2` in location of `./../libgit2` and just want to chain build script, use `make.sh` like this.

	sh	make.sh ./../libgit2
	
The script will make `build` directory at current directory. And you always have to specify source directory of `libgit2`. To see syntax, just run it without argument.








Dependencies
------------

These stuffs required to use this script.

1. Internet connection.
2. Mac OS X or iOS SDK installation. Xcode required.
3. *CMake*. I recommed [*Homebrew*](http://mxcl.github.com/homebrew/) to install this on Mac OS X. (`brew install cmake`)

























