#!/usr/bin/env rdmd
void main(string[] args)
{
    import std.file, std.getopt, std.path;
    //auto config = getopt(args, "-r", &recursive);
	auto sources = args[1 .. $ - 1];
    auto dest = args[$ - 1];
    if (sources.length > 1)
    	dest.mkdirRecurse;
    foreach (arg; sources)
    {
        if (arg.isFile)
        {
        	if (dest.exists)
        		rename(arg, dest.buildPath(arg.baseName));
        	else
        		rename(arg, dest);
        }
        else
        {
        	// TODO
			// if (recursive) arg.rmdirRecurse;
			// else arg.rmdir;
        }
    }
}
