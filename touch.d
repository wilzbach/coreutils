#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.algorithm, std.datetime, std.file, std.stdio;
    foreach (arg; args[1 .. $])
    {
        if (!arg.exists)
            std.file.write(arg, "");

        arg.setTimes(Clock.currTime, Clock.currTime);
    }
}
