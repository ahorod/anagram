require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/anagram')
require('pry')

get('/') do
  erb(:index)
end

get('/result') do
  word1 = params.fetch('word1')
  word2 = params.fetch('word2')
  @result = word1.check_all(word2)
  erb(:result)
end
