module BookStore
  module V1
    class Books < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api
      resource :books do
        desc 'Return list of books'
        get do
          books = Book.all
          present books
        end
        desc 'Return a specific book'
        route_param :id do
        get do
          book = Book.find(params[:id])
          present book
          end
        end
      end
    end
  end
end
