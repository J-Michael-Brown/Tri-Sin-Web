require ('sinatra')
require ('sinatra/reloader')
also_reload ('lib/**/*.rb')
require ('./lib/tri_sin_web.rb')

get ("/") do
  user_tri = Triangle.new(2,3,4)
  @description = user_tri.display_sides
  erb ( :index)
end
