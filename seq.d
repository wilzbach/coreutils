#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.algorithm, std.conv, std.range, std.stdio;
    int start = 1, stop;
    if (args.length == 2)
    {
        stop = args[1].to!int;
    }
    else if (args.length == 3)
    {
        start = args[1].to!int;
        stop = args[2].to!int;
    }
    iota(start, stop + 1)
        .each!writeln;
}
