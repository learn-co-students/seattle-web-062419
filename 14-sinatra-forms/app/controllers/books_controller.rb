class BooksController < Sinatra::Base
  set :views, 'app/views'

  # index
  get '/books' do
    @books = Book.all
    erb :index
  end

  # show
  get '/books/:id' do
    @book = Book.find(params[:id])
    erb :show
  end
end
