require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require ('./lib/tri_sin_web.rb')
require ('pry')

get ("/") do
  erb ( :index)
end

get ("/type") do
  side_a = params.fetch("first-side")
  side_b = params.fetch("second-side")
  side_c = params.fetch("third-side")

  user_tri = Triangle.new(side_a, side_b, side_c)

  @description = user_tri.tri_type

  erb ( :results)
end
