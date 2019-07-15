class BooksController < Sinatra::Base
  set :views, 'app/views'

  get '/books' do
    # "Hello World"
    @books = Book.all
    erb :index
  end

  get '/books/:id' do
    # byebug
    @book = Book.find(params[:id])
    erb :show
  end
end
