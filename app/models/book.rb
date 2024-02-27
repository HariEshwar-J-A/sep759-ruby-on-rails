class Book
  include HTTParty

  base_uri 'https://openlibrary.org/search.json'
  default_params fields: 'cover_i,title,author_name,key,publish_year,edition_count,language'

  def self.get_searched_books_by_name(book_name)
    get("?title=#{book_name}&limit=20")
  end

  def self.get_searched_book_by_full_name(book_full_name)
    get("?title=#{book_full_name}&limit=1")
  end

end
