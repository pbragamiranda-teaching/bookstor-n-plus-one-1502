class BooksController < ApplicationController
  def index
    @books = Book.includes(:author).all
    # SELECT * FROM books
    # SELECT * authors from authors where author_id IN books.ids
  end
end
