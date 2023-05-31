require 'json'
class Returner
  attr_accessor :preservedbooks, :preservedpeople, :preservedrentals

  def initialize
    preservation = Preservation.new
    preservation.file_exist('books')
    File.open('./data/books.json', 'r') do |file|
      bookfile = file.read
      @preservedbooks = bookfile == '' ? [] : JSON.parse(bookfile)
    end

    preservation.file_exist('rentals')
    File.open('./data/rentals.json', 'r') do |file|
      rentalfile = file.read
      @preservedrentals = rentalfile == '' ? [] : JSON.parse(rentalfile)
    end

    preservation.file_exist('people')
    File.open('./data/people.json', 'r') do |file|
      peoplefile = file.read
      @preservedpeople = peoplefile == '' ? [] : JSON.parse(peoplefile)
    end
  end
end
