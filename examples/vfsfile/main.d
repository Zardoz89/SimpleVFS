import std.stdio;
import std.typecons;
import dgamevfs;

void main()
{
    auto dir = new FSDir("main", "main_data/", Yes.writable);

    //Get the file from a directory.
    VFSFile file = dir.file("logs/memory.log");

    //Print information about the file (note that we can only get file size of an existing file):
    writeln("name: ", file.name, ", full path: ", file.path,
            ", writable: ", file.writable, ", exists: ", file.exists,
            ", size in bytes: ", file.bytes);

    //Get access to read from the file:
    {
        auto input = file.input;
        //Simply read the file to a buffer:
        auto buffer = new ubyte[file.bytes];
        input.read(buffer);
        string str = cast(string)buffer;
        writeln(str);

    }

    //Get access to write to the file:
    {
        auto output = file.output;

        //Simply write a buffer to the file:
        output.write(cast(const void[])"The answer is 42");
    }
}
