libgit2-make-ios
================
Hoon Hwangbo
2011.12.25
2015/12/31 (Updated for most recent version of `libgit2`)

[**libgit2**](https://github.com/libgit2/libgit2) is using *CMake* to support cross-platform build.
Anyway the *CMake* itself doesn't support Apple's iOS platform (yet?), and binaries for iOS platform usually require
to be universal for fluent development process.
So I made this stuff to offer automated build of `libgit2` library for iOS platform.

Caveats
-------
- Build script works with no error for `amd64`, but spits bunch of warnings for `armv7`. I don't know why.
- I actually haven't tested built binary code. So beware!
- Remove `pkgconfig`. See "Requirements" section for more details.

Usage
-----
1. Clone this repository with submodules. (`libgit2` version `v0.16.0-6682-ge8feafe` is linked as a submodule)
2. Move to the repository directory. `cd libgit2-make-ios`. Because build script works only in repository root.
2. Run `sh ./run.sh`. This will create `build` directory and will fill files into it.

This script does not try to build "fat"(Universal) binary. Because simply it's harder. You can do it yourself.

Requirements
------------
These stuffs required to use this script.

1. Internet connection. Especially to `http://github.com`. Yeah some countries may suffer.
2. OS X 10.11.2 (El Capitan). This is a script designed for only iOS platforms.
   I am not sure about older versions. This is simply because I tested this with the version.
3. Xcode 7.2. This is also I just tested only with this version.
4. CMake 3.4.0. I recommed [*Homebrew*](http://mxcl.github.com/homebrew/) to install this 
   on Mac OS X. (`brew install cmake`)
5. REMOVE `pkgconfig`. Especially the one installed by Homebrew. I don't know why, but it disrupts CMake execution by
   confusing it to use OSX SDK instead of iPhone SDK. There should be a way to avoid this, but I couldn't figure it out.

License
-------
Licensed under "MIT License". I'd be happy if you mention my name in your staff roll.









