require 'json'
require 'fileutils'

class Preservation
  def file_exist(filename)
    FileUtils.mkdir_p("./data")
    FileUtils.touch("./data/#{filename}.json") if !File.exist?("./data/#{filename}.json") && filename == "#{filename}"
  end

  def preserve_books(books)
    book_arr = []
    books.each do |book|
      book_arr << {
        title: book["title"],
        author: book["author"]
      }
    end
    return if books.empty?

    file_exist('books')
    File.write('./data/books.json', JSON.pretty_generate(book_arr))
  end

  def preserve_people(people)
    people_arr = []
    people.each do |people|
      people_arr << {
        name: people["name"],
        age: people["age"],
        class: people["class"],
          id: people["id"]
      }
    end
    return if people.empty?

    file_exist('people')
    File.write('./data/people.json', JSON.pretty_generate(people_arr))
  end

  def preserve_rentals(rentals)
    rental_arr = []
    rentals.each do |rental|
      rental_arr << {
        person: rental["person"],
        book: rental["book"],
        date: rental["date"],
        author: rental["author"]
      }
    end
    return if rentals.empty?

    file_exist('rentals')
    File.write('./data/rentals.json', JSON.pretty_generate(rental_arr))
  end
end
