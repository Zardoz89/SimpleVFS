---
layout: default
title: About
---

# Introduction

SimpleVFS it's a fork from [D-GameVFS](<https://github.com/kiith-sa/D-GameVFS) that updates to the latest changes of the 
language, and attempt to polish and finish the previous works.

D:GameVFS, and by extension SimpleVFS, is a minimalist open source virtual file system library for the
D programming language oriented at game developers.

Provided functionality is very basic - files and directories can be created,
read and written, but not deleted. There are no security features - e.g.
SimpleVFS can't handle a situation when a file it's working with is deleted
outside the program. Only files in a physical file system are supported at the
moment. There is no archive support right now.

# Features

* File system independent, easy to use API for file/directory manipulation.
* No external dependencies.
* Seamless access to multiple directories as if they were a single directory.
* Easy to extend with custom file system backend.
* There is no support for ZIP or similar archive formats at the moment.
* There is no support for deleting files/directories, and none is planned.
* There are no security features and none are planned.


# Credits

D:GameVFS was created by Ferdinand Majerech aka Kiith-Sa kiithsacmp[AT]gmail.com .

SimpleVFS was a fork created by Luis Panadero Guardeño aka Zardoz luis.panadero[AT]gmail.com .

The API was inspired the VFS API of the
`Tango library <http://www.dsource.org/projects/tango/>`_.

D:GameVFS was created using Vim and DMD on Debian, Ubuntu and Linux Mint as a VFS
library in the `D programming language <http://www.d-programming-language.org>`_.
