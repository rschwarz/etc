using Pkg

"Activate environment with given name in standard location."
function activenv(name::String)
    root = joinpath(ENV["HOME"], ".julia", "environments")
    Pkg.activate(joinpath(root, name))
end

# auto-enable Revise
# atreplinit() do repl
#     try
#         @eval using Revise
#         @async Revise.wait_steal_repl_backend()
#     catch
#     end
# end
