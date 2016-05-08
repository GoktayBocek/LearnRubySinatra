require 'sinatra'

get '/' do
  "Hello, World!"
end

get '/halis' do
  'A little about me.'
end

get '/hello/:name' do
  "Hello bro "+ params[:name]
end

get '/more/*' do
  params[:splat]+ params[:splat]
end

get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end

get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  status 404
  'not foundaa'
end


not_found do
  halt 404, 'page not founduu'
end
