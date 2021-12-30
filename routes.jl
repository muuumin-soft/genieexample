using Genie.Router

route("/") do
  serve_static_file("helloworld.html") #変更
end

#追加
route("/helloworld") do
  "Hello World!!"
end