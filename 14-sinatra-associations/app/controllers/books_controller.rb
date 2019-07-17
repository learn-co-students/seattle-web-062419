class BooksController < ApplicationController
  #root
  get '/' do
    "Hello World"
  end

  #index
  get '/books' do
    @books = Book.all
    erb :'/books/index'
  end

  #new
  get '/books/new' do
    @authors = Author.all
    erb :'/books/new'
  end

  #create
  post '/books' do
    byebug
    @book = Book.create(title: params[:title], author: params[:author], snippet: params[:snippet])
    redirect '/books'
  end

  #show
  get '/books/:id' do
    # byebug
    @book = Book.find_by(id: params[:id])
    erb :'/books/show'
  end

  #edit
  get '/books/:id/edit' do
    @book = Book.find(params[:id])
    erb :'/books/edit'
  end

  #update
  patch '/books/:id' do
    # byebug
    @book = Book.find(params[:id])
    @book.update(title: params[:title], author: params[:author], snippet: params[:snippet])
    redirect "/books/#{@book.id}"
  end

  #delete
  delete '/books/:id' do
    book = Book.find_by(id: params[:id])
    book.destroy
    redirect '/books'
  end
end
