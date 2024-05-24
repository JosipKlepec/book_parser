## Task Description

Create a CSV file that contains a list of books with their titles, authors, and publication years. Task is to parse the CSV file, extract the titles of the books that were published after a certain year, and display those titles to the console.

### Constraints
- The CSV file should contain at least 10 books.
- The `publication_year` column should contain four-digit years (e.g., "2010").

### Requirements
- No web frameworks (rails, ...)
- Unit and integration tests using the Minitest gem
- Use standard CSV library for working with CSV files
- Display extracted titles to the console
- Displayed titles should be sorted by publication year
- Write a README file explaining how to run the code and the tests


### Implementation Overview
- `Book`: A class representing a book with `title`, `author`, and `publication_year` attributes.
- `BookParser`: A class responsible for parsing the CSV file to create a list of `Book` objects.
- `BookFilter`: A class responsible for filtering the list of books based on the publication year.
- Tests are implemented using the Minitest framework to ensure the correctness of the parsing and filtering functionalities.


## Instructions for Running Tests

### Installation

Before running the tests, ensure that Ruby is installed on your computer. To install Ruby, visit the official site: [Ruby Installation](https://www.ruby-lang.org/en/documentation/installation/)

After installing Ruby, you can install Minitest using the following command in the terminal:

```bash
gem install minitest
```

## I git clone

### First, navigate to the directory where we want to clone the repository
cd ~/projects

### Then, clone the repository
git clone https://github.com/JosipKlepec/book_parser.git

### Go into the newly created repository directory
cd example-repo

## Running program

After installing Minitest, you can run the program using the following command in the terminal:

```bash
ruby main.rb
```


### Running Tests
1.  You can run the unit tests using the following command in the terminal:

```bash
ruby minitest_unit.rb
```

#### Test Structure

The tests are organized into two classes:
- `TestBookParser`: Tests the functionalities of the `parse_csv` method from the `BookParser` class.
- `TestBookFilter`: Tests the functionalities of the `filter_by_year` method from the `BookFilter` class.

2. You can run the integration tests using the following command in the terminal:

```bash
ruby minitest_integration.rb
```


## Solution

In the code, the `books.csv` file is parsed, and the books are filtered by publication year. The filtered books are then sorted, and the titles of the books are displayed.

