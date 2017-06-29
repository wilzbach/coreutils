#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.algorithm, std.range, std.stdio;

    size_t bytes, words;
    auto lines = stdin
                .byLine
                .tee!(l => bytes += l.length + 1)
                .tee!(l => words += l.splitter(" ").count)
                .count;

    writefln("%d %d %d", lines, words, bytes);
}
