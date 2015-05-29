require('sinatra')
require('sinatra/reloader')
require('./lib/word_puzzle')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word') do
  @word = params.fetch("word").word_puzzle()
  erb(:word)
end

get('/seriously') do
  erb(:seriously)
end
