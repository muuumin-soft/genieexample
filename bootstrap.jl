(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using Genieexample
push!(Base.modules_warned_for, Base.PkgId(Genieexample))
Genieexample.main()
