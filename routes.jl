using Genie.Router
using PersonData

route("/") do
  serve_static_file("helloworld.html")
end

route("/helloworld") do
  "Hello World!!"
end

route("/ajax") do
  serve_static_file("ajax.html")
end

route("/getTaroMessageJson") do 
  "{\"message\":\"太郎です\"}"
end

route("/ajax2") do
  serve_static_file("ajax2.html")
end

route("/getTaroMessageJson2") do 
  person = Person(1, "太郎", [2, 3])
  json(person)
end
