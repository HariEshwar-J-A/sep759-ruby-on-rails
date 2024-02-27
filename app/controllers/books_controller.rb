require 'httparty'
require 'pp'

class BooksController < ApplicationController
  def index
    @search_text = params[:search_text] || "harry"
    @books = Book.get_searched_books_by_name(@search_text)
  end
  def details
    @search_full_name = params[:search_full_name] || "Harry Potter and the Philosopher's Stone"
    @book = Book.get_searched_book_by_full_name(@search_full_name)
  end
end
