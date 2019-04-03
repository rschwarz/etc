using Pkg

"Activate environment with given name in standard location."
function activenv(name::String)
    root = joinpath(ENV["HOME"], ".julia", "environments")
    Pkg.activate(joinpath(root, name))
end
