require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatfuckinize' do
    user_word = params["user_phrase"]
    word = PigLatinizer.new
    @pig_latinized_word = word.to_pig_latin(user_word)

    erb :pig_latin
  end
end