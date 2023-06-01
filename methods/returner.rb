require 'json'
class Returner
  attr_accessor :preservedbooks, :preservedpeople, :preservedrentals

  def read_books
    if File.exist?('./data/books.json')
      File.open('./data/books.json', 'r') do |file|
        bookfile = file.read
        @preservedbooks = JSON.parse(bookfile)
      end
    else
      @preservedbooks = []
    end
    @preservedbooks
  end

  def read_rentals
    if File.exist?('./data/rentals.json')
      File.open('./data/rentals.json', 'r') do |file|
        rentalfile = file.read
        @preservedrentals = JSON.parse(rentalfile)
      end
    else
      @preservedrentals = []
    end
    @preservedrentals
  end

  def read_people
    if File.exist?('./data/people.json')
      File.open('./data/people.json', 'r') do |file|
        peoplefile = file.read
        @preservedpeople = JSON.parse(peoplefile)
      end
    else
      @preservedpeople = []
    end
    @preservedpeople
  end
end
