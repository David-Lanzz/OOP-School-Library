require 'json'
class Returner
  attr_accessor :preservedbooks, :preservedpeople, :preservedrentals

  def initialize
    File.open('./data/books.json', 'r') do |file|
      bookfile = file.read
    @preservedbooks = JSON.parse(bookfile)
    end
    File.open('./data/rentals.json', 'r') do |file|
      rentalfile = file.read
      @preservedrentals = JSON.parse(rentalfile)
    end
    File.open('./data/people.json', 'r') do |file|
      peoplefile = file.read
      @preservedpeople = JSON.parse(peoplefile)
    end
  end
end
