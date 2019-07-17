class AuthorsController < ApplicationController

  #index
  get '/authors' do
    @authors = Author.all
    erb :'authors/index'
  end

  #show
  get '/authors/:id' do
    # byebug
    @author = Author.find_by(id: params[:id])
    erb :'authors/show'
  end

end
