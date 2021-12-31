using Genie.Router

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
