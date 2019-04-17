#!/usr/bin/env julia

function convert_folder(path)
    println("Converting files at $path.")
    for (i, filename) in enumerate(readdir(path))
        convert_one(joinpath(path, filename),
                    joinpath(path, "$(i - 1).WAV"))
    end
end

function convert_one(infile, outfile)
    println(" $infile → $outfile")
    run(`sox --buffer 131072 --multi-threaded --no-glob $infile --clobber -r 32000 -b 16 -e signed-integer --no-glob $outfile remix - gain -n -1.5 bass +1 loudness -1 pad 0 0 dither`)
end

if length(ARGS) == 0
    convert_folder(pwd())
else
    for path in ARGS
        convert_folder(path)
    end
end
