#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.file, std.getopt;
    bool recursive;
    auto config = getopt(args, "-r", &recursive);
    foreach (arg; args[1 .. $])
    {
        if (arg.isFile) arg.remove;
        else
        {
            if (recursive) arg.rmdirRecurse;
            else arg.rmdir;
        }
    }
}
