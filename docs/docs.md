---
layout: default
title: Documentation
---

# Auto generated documentation

* **[vfs.d](vfs.html)** - Here resides more examples.
* [package.d](package.html)
* [fs.d](fs.html)
* [memory.d](memory.html)
* [stack.d](stack.html)
* [util.d](util.html)
* [exceptions.d](exceptions.html)


## Simple SimpleVFS project

Create a directory for your project. To have something for D:GameVFS to work with,
create subdirectories ``main_data`` and ``user_data`` in the project directory. In these
directories, create some random files or subdirectories.  Create a file called
``main.d`` in your project directory. Paste the following code into the file:

```D
   import std.stdio;
   import std.typecons;
   import dgamevfs;

   void main()
   {
       // Two filesystem directories, one read-only and the other read-write.
       auto main = new FSDir("main", "main_data/", No.writable);
       auto user = new FSDir("user", "user_data/", Yes.writable);

       // Stack directory where "user" overrides "main".
       auto stack = new StackDir("root");
       stack.mount(main);
       stack.mount(user);

       // Iterate over all files recursively, printing their VFS paths.
       foreach(file; stack.files(Yes.deep))
       {
           writeln(file.path);
       }

       VFSFile file = stack.file("new_file.txt");
       // Creates "new_file" in "user" (which is on top of "main" in the stack).
       file.output.write(cast(const void[])"Hello World!");

       // Read what we've written.
       auto buffer = new char[file.bytes];
       file.input.read(cast(void[]) buffer);

       writeln(buffer);
   }
```

Code for this example can be found in the ``examples/getting_started`` directory.

See the API documentation for more code examples.

