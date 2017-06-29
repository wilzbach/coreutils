#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.algorithm, std.array, std.stdio;
    stdin
        .byLineCopy
        .array
        .sort()
        .uniq
        .each!writeln;
}
