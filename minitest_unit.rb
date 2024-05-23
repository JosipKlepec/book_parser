require 'minitest/autorun'
require_relative 'main' 

class TestBookParser < Minitest::Test

  def setup
    @books_csv = 'books_new.csv' 
    File.write(@books_csv, "title,author,publication_year\nPovratak Filipa Latinovicza,Miroslav Krleža,1932\nZlatarovo zlato,August Šenoa,1871\nTena,Josip Kozarac,1894\n")
  end

   def teardown
    File.delete(@books_csv) if File.exist?(@books_csv)
   end

  def test_parse_csv
    books = BookParser.parse_csv(@books_csv)
    assert_equal 3, books.length
    assert_equal "Povratak Filipa Latinovicza", books[0].title
    assert_equal "Josip Kozarac", books[2].author
    assert_equal 1871, books[1].publication_year
  end
end

class TestBookFilter < Minitest::Test
  def setup
    @books = [
      Book.new("Mrtvi kapitali", "Josip Kozarac", 1889),
      Book.new("Dundo Maroje", "Marin Drzic", 1551),
      Book.new("Planine", "Petar Zoranic", 1569)
    ]
  end

  def test_filter_by_year
    filtered_books = BookFilter.filter_by_year(@books, 1552)
    assert_equal 2, filtered_books.length
   
    assert_equal "Mrtvi kapitali", filtered_books[0].title
    assert_equal 1569, filtered_books[1].publication_year
  end
end


