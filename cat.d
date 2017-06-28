#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.algorithm, std.stdio;
    foreach (arg; args[1 .. $])
    {
        File(arg).byLine.each!writeln;
    }
}
