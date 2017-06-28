#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.algorithm, std.path, std.stdio;
    args[1 .. $]
        .each!(arg => arg.dirName.writeln);
}
