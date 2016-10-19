require 'sinatra/base'
require_relative 'models/link'

class Bookmark < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb(:links)
    end

  post '/links' do
    Link.create(url: params[:url], title: params[:title])
    redirect '/links'
  end

  get '/links/new' do
    erb :new_links
  end

    run! if app_file == $0
end
