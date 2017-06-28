#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.file, std.getopt;
    bool recursive;
    auto config = getopt(args, "-r", &recursive);
    foreach (arg; args[1 .. $])
    {
        if (recursive) arg.rmdirRecurse;
        else arg.rmdir;
    }
}
