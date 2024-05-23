
require 'minitest/autorun'
require_relative 'main'


class TestBook < Minitest::Test
    def setup
      @test_csv_file = 'books.csv'
    end
    
    def test_sort_and_display_titles
      books = BookParser.parse_csv(@test_csv_file)
      filtered_books = BookFilter.filter_by_year(books, 1970)
      filtered_books.sort_by!(&:publication_year)
  
      titles = filtered_books.map(&:title)
  
      assert_equal ['Konjanik', 'Prosjaci i sinovi','Trojica u trnju'], titles
    end
  
  
  end