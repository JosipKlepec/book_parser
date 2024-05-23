require 'csv'

class Book
  attr_reader :title, :author, :publication_year

  def initialize(title, author, publication_year)
    @title = title
    @author = author
    @publication_year = publication_year.to_i
  end
end

class BookParser
  def self.parse_csv(file_path)
    books = []

    CSV.foreach(file_path, headers: true, encoding:'UTF-8') do |row|
      books << Book.new(row['title'], row['author'], row['publication_year'])
    end

     books
  end
end

class BookFilter

  def self.filter_by_year(books, year)
    books.select { |book| book.publication_year > year }
  end
 
end


books = BookParser.parse_csv('books.csv')

filtered_books = BookFilter.filter_by_year(books, 1970)

filtered_books.sort_by!(&:publication_year)

filtered_books.each { |book| puts book.title }
