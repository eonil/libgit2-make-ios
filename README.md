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
	sh	download-make-clean-deploy.sh ./libgit2.a

This will download, make, clean and deploy the `libgit2` binary into specified location. You have to execute this script on writable position because this script will make some directories (`src` and `build`) while performing build.

If you already have source files of `libgit2` in location of `./../libgit2` and just want to chain build script, use `make.sh` like this.

	sh	make.sh ./../libgit2
	
The script will make `build` directory at current directory. And you always have to specify source directory of `libgit2`. To see syntax, just run it without argument.








Dependencies
------------

These stuffs required to use this script.

1. Internet connection. Especially to `http://github.com`
2. Mac OS X installation. This is a script designed for only iOS platforms.
3. Mac OS X or iOS SDK installation. This will give us Xcode and Git.
4. CMake. I recommed [*Homebrew*](http://mxcl.github.com/homebrew/) to install this on Mac OS X. (`brew install cmake`)









Source Code
-----------

Source code is formatted with tabs which are assumed as 4 whitespace characters. For convenience, I recommend to set your tab size to 4. For example, use `:set tabstop=4` in VI.
















