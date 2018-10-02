class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/recipes' do
    a = Recipe.new(:name=>"sdf", :ingredients=>"vegge")
    a.save
    @recipes = Recipe.all
    erb :index
  end
end
