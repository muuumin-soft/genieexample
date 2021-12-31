module PersonData

using JSON

export Person, json

struct Person
    id
    name
    parents
end

function dict(p::Person)
    d = Dict()
    for prop in propertynames(p)
        d[prop] = getproperty(p, prop)
    end
    return d
end

function JSON.json(p::Person)
    JSON.json(dict(p))
end

end